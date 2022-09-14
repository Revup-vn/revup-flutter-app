import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../../gen/assets.gen.dart';
import '../../../l10n/l10n.dart';
import '../../../router/router.dart';
import '../../../shared/fallbacks.dart';
import '../../../shared/widgets/custom_dialog.dart';
import '../../../shared/widgets/loading.u.dart';
import '../../../shared/widgets/unknown_failure.dart';
import '../bloc/repair_status_bloc.dart';

class RepairStatusView extends StatefulWidget {
  const RepairStatusView({super.key, required this.recordId});
  final String recordId;

  @override
  State<RepairStatusView> createState() => _RepairStatusViewState();
}

class _RepairStatusViewState extends State<RepairStatusView> {
  @override
  void initState() {
    super.initState();
    context.read<NotificationCubit>().addForegroundListener((p0) {
      final type = p0.payload.type;
      switch (type) {
        case NotificationType.NormalMessage:
          final subType = p0.payload.payload['subType'] as String;
          if (subType == 'RecommendService') {
            final serviceName = p0.payload.payload['serviceName'] as String;
            final productName = p0.payload.payload['productName'] as String;
            final total = num.parse(p0.payload.payload['total'] as String);
            showDialog<void>(
              barrierDismissible: false,
              context: context,
              builder: (bcontext) {
                return SimpleDialogCustom(
                  height: 250,
                  content: [
                    AutoSizeText(
                      context.l10n.recommendServiceLabel,
                      style: Theme.of(context).textTheme.headline5,
                      textAlign: TextAlign.center,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            AutoSizeText(context.l10n.serviceLabel),
                            AutoSizeText(
                              serviceName,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            AutoSizeText(context.l10n.productLabel),
                            AutoSizeText(
                              productName,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            AutoSizeText(context.l10n.totalFeeLabel),
                            AutoSizeText(
                              context.formatMoney(total.toInt()),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                  button: [
                    TextButton(
                      onPressed: () {
                        bcontext.router.pop();
                      },
                      child: AutoSizeText(
                        context.l10n.cancelLabel,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // confirm service
                        context.read<RepairStatusBloc>().add(
                              RepairStatusEvent.confirmService(
                                serviceName: serviceName,
                                productName: productName,
                              ),
                            );
                        bcontext.router.pop();
                      },
                      child: AutoSizeText(
                        context.l10n.confirmLabel,
                      ),
                    ),
                  ],
                );
              },
            );
          }
          break;

        // ignore: no_default_cases
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return WillPopScope(
      onWillPop: () async => false,
      child: BlocBuilder<RepairStatusBloc, RepairStatusState>(
        builder: (context, state) {
          return state.when(
            initial: Container.new,
            loading: Loading.new,
            failure: UnknownFailure.new,
            success: (serviceList, providerId) {
              final transFee = serviceList.firstWhere(
                (e) => e.name == 'transFee',
              );
              final services = serviceList
                  .where((element) => element.name != 'transFee')
                  .toList();
              return Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  title: AutoSizeText(
                    l10n.workerRepairLabel,
                    style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold) ??
                        const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                body: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    AutoSizeText(
                                      l10n.serviceRequestLabel,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.add_box_outlined,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                      onPressed: () {
                                        context.router.push(
                                          ConfirmServiceRoute(
                                            providerId: providerId,
                                            recordId: widget.recordId,
                                            optionalService: [],
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      child: AutoSizeText(
                                        l10n.transitFeeLabel,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                    ),
                                    AutoSizeText(
                                      context.formatMoney(transFee.price),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold),
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
                                  var statusLabel = l10n.pendingLabel;
                                  var statusColor = Colors.blueAccent;
                                  if (services[index].status == 'paid') {
                                    statusLabel = l10n.paidLabel;
                                    statusColor = Colors.greenAccent;
                                  } else if (services[index].status ==
                                      'waiting') {
                                    statusLabel = l10n.waitingLabel;
                                    statusColor = Colors.orangeAccent;
                                  }
                                  return Card(
                                    elevation: 0,
                                    child: SizedBox(
                                      height: 96,
                                      child: ListTile(
                                        leading: SizedBox(
                                          height: 64,
                                          width: 64,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  services[index].imageUrl ??
                                                      kFallbackServiceImg,
                                              placeholder: (context, url) =>
                                                  Assets.screens.dfAvatar.image(
                                                fit: BoxFit.fill,
                                                height: 64,
                                                gaplessPlayback: true,
                                                width: 64,
                                              ),
                                              errorWidget: (context, url,
                                                  dynamic error) {
                                                return Assets.screens.dfAvatar
                                                    .image(
                                                  fit: BoxFit.fill,
                                                  height: 64,
                                                  gaplessPlayback: true,
                                                  width: 64,
                                                );
                                              },
                                              height: 80,
                                              width: 80,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        title: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            AutoSizeText(
                                              services[index].name == 'transFee'
                                                  ? l10n.feeTransportLabel
                                                  : services[index].name,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.normal,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: AutoSizeText(
                                                    services[index].price == -1
                                                        ? l10n
                                                            .needQuotePriceLabel
                                                        : context.formatMoney(
                                                            services[index]
                                                                    .price +
                                                                (services[index]
                                                                        .products
                                                                        .isEmpty
                                                                    ? 0
                                                                    : services[
                                                                            index]
                                                                        .products
                                                                        .fold(
                                                                          0,
                                                                          (p, e) =>
                                                                              p +
                                                                              e.unitPrice * e.quantity,
                                                                        )),
                                                          ),
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .primary,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                                AutoSizeText(
                                                  statusLabel,
                                                  style: TextStyle(
                                                    color: statusColor,
                                                  ),
                                                  maxFontSize: 12,
                                                  minFontSize: 8,
                                                ),
                                              ],
                                            ),
                                            AutoSizeText(
                                              '''${l10n.productLabel}: ${services[index].products.isEmpty ? l10n.noneLabel : ('${services[index].products.first.name} x ${services[index].products.first.quantity}')}''',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 150,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(16, 6, 16, 0),
                      width: MediaQuery.of(context).size.width,
                      child: SizedBox(
                        width: 30,
                        height: 60,
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
                                          : ((e.price == -1 ? 0 : e.price) +
                                              (e.products.isEmpty
                                                  ? 0
                                                  : e.products.first.unitPrice *
                                                      e.products.first
                                                          .quantity))),
                                ),
                              ),
                              style: Theme.of(context).textTheme.labelLarge,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
