import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../l10n/l10n.dart';
import '../../../shared/widgets/unknown_failure.dart';
import '../../widgets/service_avatar.dart';
import '../bloc/choose_product_bloc.dart';

class ChooseProductView extends StatefulWidget {
  const ChooseProductView({super.key});

  @override
  State<ChooseProductView> createState() => _ChooseProductViewState();
}

class _ChooseProductViewState extends State<ChooseProductView> {
  String? groupValue = '';
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
            failure: UnknownFailure.new,
            orElse: () => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
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
                                return Card(
                                  elevation: 0,
                                  child: ListTile(
                                    leading: ServiceAvatar(
                                      imageUrl: products[index].img,
                                    ),
                                    title: AutoSizeText(
                                      products[index].name,
                                    ),
                                    subtitle: AutoSizeText(
                                      '${l10n.productPriceLabel}: '
                                      '${products[index].price}',
                                    ),
                                    trailing: Radio<String>(
                                      activeColor:
                                          Theme.of(context).colorScheme.primary,
                                      value: products[index].name,
                                      groupValue: groupValue,
                                      toggleable: true,
                                      onChanged: (String? value) {
                                        setState(() {
                                          groupValue = value;
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
                        decoration:
                            BoxDecoration(color: Theme.of(context).cardColor),
                        child: ElevatedButton(
                          onPressed: () {
                            context
                                .read<ChooseProductBloc>()
                                .add(ChooseProductEvent.submitted(groupValue));
                          },
                          style: Theme.of(context).elevatedButtonTheme.style,
                          child: AutoSizeText(l10n.confirmLabel),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            });
      },
    );
  }
}
