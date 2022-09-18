import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../gen/assets.gen.dart';
import '../../h22_invoice/widgets/default_avatar.dart';
import '../../h2_find_provider/models/provider_data.u.dart';
import '../../l10n/l10n.dart';
import '../../order/models/pending_service_model.dart';
import '../../router/router.dart';
import '../../service/choose_service/cubit/payment_cubit.dart';
import '../../shared/fallbacks.dart';
import '../../shared/utils.dart';
import '../bloc/invoice_payment_bloc.u.dart';

class InvoicePaymentView extends StatelessWidget {
  const InvoicePaymentView({
    super.key,
    required this.providerData,
    required this.serviceList,
    required this.recordId,
  });
  final ProviderData providerData;
  final List<PendingServiceModel> serviceList;
  final String recordId;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final maybeUser = getUser(context.read<AuthenticateBloc>().state);
    var isPayOnline = false;
    final services = serviceList.where((e) => e.name != 'transFee').toList();
    final transFee =
        serviceList.firstWhere((element) => element.name == 'transFee');
    final blocPage = context.read<InvoicePaymentBloc>();
    final paymentCubit = context.watch<PaymentCubit>();
    blocPage.state.maybeWhen(
      initial: paymentCubit.watch,
      orElse: () => false,
    );
    paymentCubit.state.when(
      initial: () => false,
      failure: (recordId) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Future<dynamic>.delayed(const Duration(seconds: 2), () {
            showFlash<void>(
              duration: const Duration(seconds: 2),
              context: context,
              builder: (_, controller) {
                return Flash<Widget>(
                  controller: controller,
                  margin: const EdgeInsets.only(left: 20),
                  behavior: FlashBehavior.floating,
                  position: FlashPosition.top,
                  forwardAnimationCurve: Curves.easeIn,
                  reverseAnimationCurve: Curves.easeOut,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                  ),
                  child: FlashBar(
                    content: Text(
                      l10n.failurePaymentLabel,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                    indicatorColor: Theme.of(context).colorScheme.error,
                    primaryAction: TextButton(
                      onPressed: () {
                        controller.dismiss();
                      },
                      child: Text(context.l10n.hideLabel),
                    ),
                  ),
                );
              },
            );
          });
        });
      },
      success: (token, recordId) {
        context
            .read<NotificationCubit>()
            .sendMessageToToken(
              SendMessage(
                title: 'Revup',
                body: 'done',
                token: token,
                icon: kRevupIconApp,
                payload: MessageData(
                  type: NotificationType.ConsumerBilled,
                  payload: <String, dynamic>{
                    'providerId': providerData.id,
                  },
                ),
              ),
            )
            .then((value) async {
          //TODO : update payment service to paid
          final paymentRepo = context
              .read<StoreRepository>()
              .repairPaymentRepo(RepairRecordDummy.dummyStarted(recordId));

          final paymentService = (await paymentRepo.all())
              .fold<IList<PaymentService>>((l) => nil(), (r) => r)
              .filter(
                (a) => a.map(
                  pending: (v) => v.isComplete,
                  paid: (v) => false,
                  needToVerify: (v) => false,
                ),
              );
          if (!paymentService.isEmpty) {
            await paymentService
                .map(
                  (a) => a.maybeMap(
                    pending: (v) => PaymentService.paid(
                      serviceName: v.serviceName,
                      moneyAmount: v.moneyAmount,
                      products: v.products,
                      paidIn: DateTime.now(),
                    ),
                    orElse: () => throw NullThrownError(),
                  ),
                )
                .traverseFuture((a) async => paymentRepo.update(a));
          }
        }).then((value) {
          showDialog<String>(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return Dialog(
                backgroundColor: Colors.transparent,
                insetPadding: const EdgeInsets.all(10),
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Column(
                        children: [
                          Icon(
                            Icons.done,
                            color: Theme.of(context).colorScheme.onTertiary,
                          ),
                          AutoSizeText(
                            context.l10n.doneLabel,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onTertiary,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );

          return Future.delayed(
            const Duration(seconds: 3),
            () async {
              context.router.popUntil(
                (route) => route.settings.name == HomeRoute.name,
              );
            },
          );
        });
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          l10n.paymentLabel,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(48),
                              child: CachedNetworkImage(
                                fadeInDuration:
                                    const Duration(milliseconds: 50),
                                fadeOutDuration:
                                    const Duration(milliseconds: 50),
                                imageUrl: providerData.avatar,
                                placeholder: (context, url) {
                                  return DefaultAvatar(
                                    textSize:
                                        Theme.of(context).textTheme.titleLarge,
                                    userName: providerData.fullName,
                                  );
                                },
                                errorWidget: (context, url, dynamic error) {
                                  return DefaultAvatar(
                                    textSize:
                                        Theme.of(context).textTheme.titleLarge,
                                    userName: providerData.fullName,
                                  );
                                },
                                height: 64,
                                width: 64,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(padding: EdgeInsets.only(left: 16)),
                            AutoSizeText(
                              providerData.fullName,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            Row(
                              children: [
                                AutoSizeText(
                                  providerData.rating.isNaN
                                      ? '0'
                                      : providerData.rating.toStringAsFixed(1),
                                  style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ) ??
                                      const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                ),
                                AutoSizeText(
                                  '(${providerData.ratingCount})',
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      AutoSizeText(
                        '''${l10n.addressLabel} ${providerData.address}''',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        AutoSizeText(
                          l10n.invoiceDetailsLabel,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: AutoSizeText(
                            l10n.transitFeeLabel,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                        AutoSizeText(
                          context.formatMoney(transFee.price),
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        AutoSizeText(
                          transFee.status == 'pending'
                              ? context.l10n.pendingLabel
                              : context.l10n.paidLabel,
                          maxFontSize: 12,
                          minFontSize: 8,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: services.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            AutoSizeText(
                              services[index].name,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            AutoSizeText(
                              services[index].status == 'paid'
                                  ? context.l10n.paidLabel
                                  : context.formatMoney(
                                      services[index].price +
                                          (services[index].products.isEmpty
                                              ? 0
                                              : services[index].products.fold(
                                                    0,
                                                    (p, e) =>
                                                        p +
                                                        e.unitPrice *
                                                            e.quantity,
                                                  )),
                                    ),
                              style: services[index].status == 'paid'
                                  ? Theme.of(context)
                                      .textTheme
                                      .labelLarge
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      )
                                  : Theme.of(context).textTheme.labelLarge,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  if (services.isNotEmpty)
                    const Divider(
                      height: 1,
                      thickness: 1,
                    ),
                  const SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AutoSizeText(
                        l10n.invoiceInformationLabel,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {
                          context.router.push<bool>(const PaymentRoute()).then(
                            (value) {
                              isPayOnline = value ?? false;
                              context.read<InvoicePaymentBloc>().add(
                                    InvoicePaymentEvent.changePaymentMethod(
                                      isPayOnline: isPayOnline,
                                    ),
                                  );
                            },
                          );
                        },
                        child: BlocSelector<InvoicePaymentBloc,
                            InvoicePaymentState, bool>(
                          selector: (state) => state.maybeWhen(
                            changePaymentMethodSuccess: (isPaymentOnline) =>
                                isPaymentOnline,
                            orElse: () => false,
                          ),
                          builder: (context, isPaymentOnline) {
                            return ListTile(
                              title: AutoSizeText(
                                isPaymentOnline
                                    ? l10n.momoLabel
                                    : l10n.cashLabel,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              leading: isPaymentOnline
                                  ? Assets.screens.momo.image(
                                      width: 24,
                                      height: 24,
                                    )
                                  : const Icon(Icons.money),
                              trailing: const Icon(Icons.arrow_forward_ios),
                            );
                          },
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showFlash(
                            context: context,
                            builder: (context, controller) =>
                                Flash<void>.dialog(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(2)),
                              controller: controller,
                              child: Text(context.l10n.notSupportLabel),
                            ),
                          );
                        },
                        child: ListTile(
                          title: AutoSizeText(
                            l10n.endowLabel,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          leading: const Icon(Icons.loyalty),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 6, 16, 0),
                  width: MediaQuery.of(context).size.width,
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: DecoratedBox(
                      decoration:
                          BoxDecoration(color: Theme.of(context).cardColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          AutoSizeText(
                            l10n.total,
                            style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(fontWeight: FontWeight.bold) ??
                                const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          AutoSizeText(
                            context.formatMoney(
                              serviceList.fold(
                                0,
                                (p, e) =>
                                    p +
                                    (e.name == 'transFee'
                                        ? (e.status == 'pending'
                                            ? e.price
                                            : -e.price)
                                        : (e.isComplete
                                            ? (e.price +
                                                (e.products.isEmpty
                                                    ? 0
                                                    : e.products.first
                                                            .unitPrice *
                                                        e.products.first
                                                            .quantity))
                                            : 0)),
                              ),
                            ),
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                  ),
                  child: ElevatedButton(
                    onPressed: () async {
                      maybeUser.fold(
                        () => null,
                        (user) => context.read<InvoicePaymentBloc>().add(
                              InvoicePaymentEvent.sumbitPayment(
                                isPayOnline: isPayOnline,
                                totalAmount: services.fold(
                                  0,
                                  (p, e) =>
                                      p +
                                      (e.isComplete
                                          ? (e.price +
                                              (e.products.isEmpty
                                                  ? 0
                                                  : e.products.first.unitPrice *
                                                      e.products.first
                                                          .quantity))
                                          : 0),
                                ),
                                services: services,
                                cid: user.uuid,
                                pid: providerData.id,
                                sendMessage: (
                                  a,
                                  b,
                                ) {
                                  context
                                      .read<NotificationCubit>()
                                      .sendMessageToToken(
                                        SendMessage(
                                          title: 'Revup',
                                          body: 'done',
                                          token: a,
                                          icon: kRevupIconApp,
                                          payload: MessageData(
                                            type:
                                                NotificationType.ConsumerBilled,
                                            payload: <String, dynamic>{
                                              'providerId': b,
                                            },
                                          ),
                                        ),
                                      );
                                },
                                pay: (
                                  recordId,
                                  displayRecordName,
                                  consumerName,
                                ) =>
                                    context.read<MomoCubit>().pay(
                                          PaymentInfo(
                                            amount: services.fold(
                                              0,
                                              (p, e) =>
                                                  p +
                                                  (e.name == 'transFee'
                                                      ? (e.status == 'pending'
                                                          ? e.price
                                                          : -e.price)
                                                      : (e.isComplete
                                                          ? (e.price +
                                                              (e.products
                                                                      .isEmpty
                                                                  ? 0
                                                                  : e
                                                                          .products
                                                                          .first
                                                                          .unitPrice *
                                                                      e
                                                                          .products
                                                                          .first
                                                                          .quantity))
                                                          : 0)),
                                            ),
                                            recordId: recordId,
                                            displayRecordName:
                                                displayRecordName,
                                            consumerName: consumerName,
                                            description: l10n
                                                .paymentRequestDescriptionLabel,
                                          ),
                                        ),
                              ),
                            ),
                      );
                    },
                    style: Theme.of(context).elevatedButtonTheme.style,
                    child: AutoSizeText(
                      l10n.paymentLabel,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
