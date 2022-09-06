import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:revup_core/core.dart';

import '../../gen/assets.gen.dart';
import '../../h2_find_provider/models/provider_data.u.dart';
import '../../l10n/l10n.dart';
import '../../router/app_router.gr.dart';
import '../../shared/fallbacks.dart';
import '../models/service_data.dart';
import '../widgets/default_avatar.dart';

class ServiceInvoiceContent extends StatelessWidget {
  const ServiceInvoiceContent(
    this.total,
    this.providerData,
    this.serviceData, {
    super.key,
    required this.ready,
  });
  final ProviderData providerData;
  final IList<ServiceData> serviceData;
  final bool ready;
  final int? total;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final service = serviceData.toIterable().toList();

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          l10n.serviceInvoiceLabel,
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
                                  providerData.rating.isNaN ||
                                          providerData.rating == 0
                                      ? '0'
                                      : providerData.rating.toString(),
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
                                  '''(${providerData.ratingCount.toString()})''',
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
                        '${l10n.addressLabel} ${providerData.address}',
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
                    itemCount: service.length,
                    itemBuilder: (BuildContext context, int index) {
                      var statusLabel = l10n.completedLabel;
                      var statusColor = Colors.blueAccent;
                      if (service[index].state == 'paid') {
                        statusLabel = l10n.paidLabel;
                        statusColor = Colors.greenAccent;
                      } else if (service[index].state == 'pending') {
                        if (!service[index].isCompleted) {
                          statusLabel = l10n.uncompletedLabel;
                          statusColor = Colors.orangeAccent;
                        } else {
                          statusLabel = l10n.completedLabel;
                          statusColor = Colors.blueAccent;
                        }
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
                                borderRadius: BorderRadius.circular(20),
                                child: CachedNetworkImage(
                                  imageUrl: service[index].imgUrl ??
                                      kFallbackServiceImg,
                                  //todo change to defaul service avt
                                  errorWidget: (context, url, dynamic error) {
                                    return Assets.screens.dfAvatar.image(
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  service[index].serviceName,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: AutoSizeText(
                                        context.formatMoney(
                                          service[index].serviceFee,
                                        ),
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                        overflow: TextOverflow.ellipsis,
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
                                  '''${l10n.productLabel}: ${service[index].products.isEmpty ? l10n.noneLabel : ('${service[index].products.first.name} x ${service[index].products.first.quantity}')}''',
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
                          context.formatMoney(total ?? 0),
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: ready
                        ? () {
                            context.router.push(
                              InvoicePaymentRoute(
                                providerData: providerData,
                                serviceData: service,
                              ),
                            );
                          }
                        : null,
                    style: Theme.of(context).elevatedButtonTheme.style,
                    child: AutoSizeText(
                      l10n.confirmLabel,
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
