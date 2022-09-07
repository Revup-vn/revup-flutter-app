import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../../shared/widgets/loading.u.dart';
import '../../shared/widgets/unknown_failure.dart';
import '../bloc/payment_page_bloc.dart';
import '../widgets/payment_item.u.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final blocPage = context.watch<PaymentPageBloc>();
    blocPage.state.maybeWhen(
        initial: () => blocPage.add(const PaymentPageEvent.started()),
        orElse: () => false);
    return BlocBuilder<PaymentPageBloc, PaymentPageState>(
      builder: (context, state) {
        return state.when(
            initial: Container.new,
            loading: Loading.new,
            failure: UnknownFailure.new,
            success: () {
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
                body: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 50, 16, 0),
                      child: AutoSizeText(
                        l10n.morePaymentMethodsLabel,
                        style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(fontWeight: FontWeight.bold) ??
                            const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: PaymentItem(
                            paymentIcon: Assets.screens.momo.image(),
                            paymentName: l10n.momoLabel,
                            callback: () {
                              context.router.pop<bool>(true);
                            },
                          ),
                        ),
                        Expanded(
                          child: PaymentItem(
                            paymentIcon: Assets.screens.iconsZalo.svg(),
                            paymentName: l10n.zaloPayLabel,
                            callback: () {
                              showFlash(
                                context: context,
                                builder: (context, controller) =>
                                    Flash<void>.dialog(
                                  controller: controller,
                                  child: Text(
                                      context.l10n.paymentSupportDialogLabel),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: PaymentItem(
                            paymentIcon: Assets.screens.iconCash.svg(),
                            paymentName: l10n.cashLabel,
                            callback: () {
                              context.router.pop<bool>(false);
                            },
                          ),
                        ),
                        const Expanded(
                          child: SizedBox(),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            });
      },
    );
  }
}
