import 'dart:math' as math;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/overview_order_bloc.dart';
import 'provider_avatar.u.dart';

import '../../../l10n/l10n.dart';

class OverviewOrderContent extends StatelessWidget {
  const OverviewOrderContent({
    super.key,
    this.totalFeeService,
    this.providerID,
  });
  final String? providerID;
  final String? totalFeeService;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.fromLTRB(16, 20, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    context.l10n.serviceInforLabel,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Row(
                            children: [
                              const ProviderAvatar(
                                'https://image.thanhnien.vn/w1024/Uploaded/2022/pwivoviu/2022_01_21/anh-1-9607.jpg',
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              AutoSizeText(
                                maxFontSize: 22,
                                'Nguyễn Văn A',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox.square(
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      // TODO(wamynobe): implement call function
                                    },
                                    icon: Icon(
                                      Icons.call,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox.square(
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      // TODO(wamynobe): implement video call function
                                    },
                                    icon: Icon(
                                      Icons.videocam,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color:
                        Theme.of(context).colorScheme.shadow.withOpacity(0.3),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Icon(Icons.build),
                            const SizedBox(
                              width: 20,
                            ),
                            AutoSizeText.rich(
                              TextSpan(
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: '${context.l10n.serviceLabel} : ',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                  TextSpan(
                                    text: '3 hạng mục',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            context.read<OverviewOrderBloc>().add(
                                  const OverviewOrderEvent.selectedProduct(
                                    totalServiceFee: '450.000',
                                  ),
                                );
                          },
                          child: Text(
                            context.l10n.detailLabel,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Row(
                          children: [
                            const Icon(Icons.social_distance),
                            const SizedBox(
                              width: 20,
                            ),
                            AutoSizeText.rich(
                              TextSpan(
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: '${context.l10n.distanceLabel}: ',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                  TextSpan(
                                    text: '2.7km',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Row(
                          children: [
                            const Icon(Icons.monetization_on_outlined),
                            const SizedBox(
                              width: 20,
                            ),
                            AutoSizeText.rich(
                              TextSpan(
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: '${context.l10n.totalFeeLabel}: ',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                  TextSpan(
                                    text: '15.000đ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  )
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(''),
                            ),
                          ],
                        ),
                      ),
                      BlocSelector<OverviewOrderBloc, OverviewOrderState,
                          String>(
                        selector: (ready) => ready.maybeMap(
                          ready: (value) => value.totalFeeService,
                          showListFee: (value) => '1',
                          orElse: () => '0',
                        ),
                        builder: (context, ready) {
                          return Visibility(
                            visible: ready != '0',
                            child: BlocSelector<OverviewOrderBloc,
                                OverviewOrderState, bool>(
                              selector: (state) => state.maybeMap(
                                showListFee: (value) => value.showListFee,
                                orElse: () => false,
                              ),
                              builder: (bloccontext, state) => Expanded(
                                child: IconButton(
                                  icon: Transform.rotate(
                                    angle: state ? 90 * math.pi / 180 : 0,
                                    child: const Icon(
                                      Icons.arrow_forward_ios,
                                      size: 18,
                                    ),
                                  ),
                                  onPressed: () {
                                    context.read<OverviewOrderBloc>().add(
                                          OverviewOrderEvent.arrowButtonPressed(
                                            currentStateButton: state,
                                          ),
                                        );
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                    ),
                    child: BlocSelector<OverviewOrderBloc, OverviewOrderState,
                        bool>(
                      selector: (state) => state.maybeMap(
                        showListFee: (value) => value.showListFee,
                        orElse: () => false,
                      ),
                      builder: (context, state) {
                        return Visibility(
                          visible: state,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.directions_run),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  AutoSizeText.rich(
                                    TextSpan(
                                      text: '${context.l10n.transitFeeLabel}: ',
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                      children: [
                                        TextSpan(
                                          text: '15.000đ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        )
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
                                  const Icon(Icons.miscellaneous_services),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  AutoSizeText.rich(
                                    TextSpan(
                                      text: '${context.l10n.serviceFeeLabel}: ',
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                      children: [
                                        TextSpan(
                                          text: '450.000đ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    thickness: 0.5,
                    color:
                        Theme.of(context).colorScheme.shadow.withOpacity(0.7),
                  ),
                  AutoSizeText(
                    maxLines: 2,
                    context.l10n.videoCallDescription,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Theme.of(context).textTheme.caption?.color,
                        ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocSelector<OverviewOrderBloc, OverviewOrderState, String>(
                    selector: (state) => state.maybeMap(
                      ready: (value) => value.totalFeeService,
                      showListFee: (value) => '1',
                      orElse: () => '0',
                    ),
                    builder: (blocContext, state) {
                      return ElevatedButton(
                        onPressed: state != '0'
                            ? () {
                                // TODO(wamynobe): implement confirm service when consumer selected products.
                              }
                            : null,
                        child: AutoSizeText(
                          context.l10n.confirmLabel,
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
