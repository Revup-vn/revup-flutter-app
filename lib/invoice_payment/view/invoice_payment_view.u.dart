import 'dart:async';

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flash/flash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart' as feedback;
import 'package:revup_core/core.dart';

import '../../invoice/models/provider_data.dart';
import '../../invoice/models/service_data.dart';
import '../../invoice/widgets/default_avatar.dart';
import '../../l10n/l10n.dart';
import '../../router/router.dart';
import '../../shared/utils.dart';
import '../bloc/invoice_payment_bloc.u.dart';

class InvoicePaymentView extends StatelessWidget {
  const InvoicePaymentView(
    this.providerData,
    this.serviceData,
    this.total, {
    super.key,
  });
  final ProviderData providerData;
  final List<ServiceData> serviceData;
  final int total;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final maybeUser = getUser(context.read<AuthenticateBloc>().state);
    var isPayOnline = false;

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
                                imageUrl: providerData.providerUrlAvatar,
                                placeholder: (context, url) {
                                  return DefaultAvatar(
                                    textSize:
                                        Theme.of(context).textTheme.titleLarge,
                                    userName: providerData.providerName,
                                  );
                                },
                                // ignore: implicit_dynamic_parameter
                                errorWidget: (context, url, error) {
                                  return DefaultAvatar(
                                    textSize:
                                        Theme.of(context).textTheme.titleLarge,
                                    userName: providerData.providerName,
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
                              providerData.providerName,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            Row(
                              children: [
                                AutoSizeText(
                                  providerData.ratingStar.toString(),
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
                                  '(${providerData.totalStarRating})',
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
                        l10n.addressLabel + providerData.providerAddress,
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
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: serviceData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            AutoSizeText(
                              serviceData[index].serviceName,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            AutoSizeText(
                              '${serviceData[index].serviceFee} 000đ',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ],
                        ),
                      );
                    },
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
                          maybeUser.fold(
                            () => null,
                            (user) {
                              final completer = Completer<bool>();
                              context.router.push(
                                PaymentRoute(
                                  user: user,
                                  completer: completer,
                                ),
                              );
                              completer.future.then(
                                (value) {
                                  isPayOnline = value;
                                  context.read<InvoicePaymentBloc>().add(
                                        InvoicePaymentEvent.changePaymentMethod(
                                          isPayOnline: value,
                                        ),
                                      );
                                },
                              );
                            },
                          );
                          //test method

                          // final completer = Completer<bool>();
                          // context.router.push(
                          //   PaymentRoute(
                          //     user: user,
                          //     completer: completer,
                          //   ),
                          // );
                          // completer.future.then(
                          //   (value) {
                          //     isPayOnline = value;
                          //     context.read<InvoicePaymentBloc>().add(
                          //           InvoicePaymentEvent.changePaymentMethod(
                          //             isPayOnline: value,
                          //           ),
                          //         );
                          //   },
                          // );
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
                                  ? const Icon(Icons.payment)
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
                  decoration: BoxDecoration(color: Theme.of(context).cardColor),
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
                            total != 0 ? '$total 000đ' : '0đ',
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
                  decoration: BoxDecoration(color: Theme.of(context).cardColor),
                  child: ElevatedButton(
                    onPressed: () async {
                      final completer = Completer<feedback.Feedback>();
                      await context.router.push(
                        ReviewRepairmanRoute(
                          providerData: providerData,
                          completer: completer,
                        ),
                      );
                      final feedbackData = completer.future;
                      await feedbackData.then((value) {
                        maybeUser.fold(
                          () => null,
                          (user) => context.read<InvoicePaymentBloc>().add(
                                InvoicePaymentEvent.sumbitPayment(
                                  isPayOnline: isPayOnline,
                                  totalAmount: total,
                                  cid: user.uuid,
                                  pid: providerData.providerID,
                                  feedback: value,
                                ),
                              ),
                        );
                      });
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
