import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../l10n/l10n.dart';
import '../../../router/router.dart';
import '../../../shared/widgets/loading.u.dart';
import '../../widgets/service_avatar.dart';
import '../bloc/choose_product_bloc.dart';
import '../widgets/quantity_button.dart';

class ChooseProductView extends StatefulWidget {
  const ChooseProductView({
    super.key,
    required this.recordId,
    required this.isStarted,
  });
  final String recordId;
  final bool isStarted;
  @override
  State<ChooseProductView> createState() => _ChooseProductViewState();
}

class _ChooseProductViewState extends State<ChooseProductView> {
  String? groupValue = '';
  int quantity = 1;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final bloc = context.watch<ChooseProductBloc>();
    bloc.state.whenOrNull(
      initial: () => bloc.add(const ChooseProductEvent.started()),
    );

    return BlocBuilder<ChooseProductBloc, ChooseProductState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: Loading.new,
          success: (productList) {
            final products = productList.toList();

            return Scaffold(
              appBar: AppBar(
                title: AutoSizeText(l10n.chooseProductAppBarTitle),
                centerTitle: false,
              ),
              body: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            padding: const EdgeInsets.only(bottom: 100),
                            itemCount: products.length,
                            itemBuilder: (context, index) {
                              final productFormKey =
                                  GlobalKey<FormBuilderState>();
                              return Card(
                                elevation: 0,
                                child: ListTile(
                                  leading: ServiceAvatar(
                                    imageUrl: products[index].img,
                                    userName: 'Service',
                                  ),
                                  title: AutoSizeText(
                                    products[index].name,
                                  ),
                                  subtitle: Row(
                                    children: [
                                      Column(
                                        children: [
                                          AutoSizeText(
                                            '${l10n.productPriceLabel}: '
                                            '${products[index].price}',
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      if (isChecked == true &&
                                          products[index].name == groupValue)
                                        Expanded(
                                          child: Text(
                                            'X ${quantity.toString()}',
                                          ),
                                        )
                                      else
                                        Expanded(
                                          child: FormBuilder(
                                            key: productFormKey,
                                            child: const QuantityButtonCustom(
                                              height: 40,
                                              width: 50,
                                            ),
                                          ),
                                        )
                                    ],
                                  ),
                                  trailing: Radio<String>(
                                    activeColor:
                                        Theme.of(context).colorScheme.primary,
                                    value: products[index].name,
                                    groupValue: groupValue,
                                    toggleable: true,
                                    onChanged: (String? value) {
                                      productFormKey.currentState
                                          ?.saveAndValidate();
                                      final data = productFormKey
                                          .currentState?.value['quantity']
                                          .toString();
                                      final xxxquantity =
                                          int.parse(data ?? '1');

                                      setState(() {
                                        groupValue = value;
                                        quantity = xxxquantity;
                                        !isChecked
                                            ? isChecked = !isChecked
                                            : isChecked = isChecked;
                                      });
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          if (groupValue?.isEmpty ?? false) {
                            context.router.pop();
                            return;
                          }

                          context.read<ChooseProductBloc>().add(
                                ChooseProductEvent.submitted(
                                  tuple2(groupValue, quantity),
                                  widget.recordId,
                                  () => widget.isStarted
                                      ? context.router.popUntil(
                                          (route) =>
                                              route.settings.name ==
                                              RepairStatusRoute.name,
                                        )
                                      : context.router.pop(),
                                ),
                              );
                        },
                        style: Theme.of(context).elevatedButtonTheme.style,
                        child: AutoSizeText(l10n.confirmLabel),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
