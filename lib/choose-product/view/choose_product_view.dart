import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../choose-service/models/product_data.dart';
import '../../l10n/l10n.dart';
import '../widget/product_radio_tile.dart';

class ChooseProductView extends StatelessWidget {
  const ChooseProductView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(l10n.chooseProductAppBarTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView(
              shrinkWrap: true,
              children: const [
                ProductCheckboxTile(
                  productData: ProductData(
                    id: '1',
                    serviceId: '1',
                    name: 'Chips',
                    price: 1000,
                    productImageUrl:
                        'https://images.unsplash.com/photo-1657826181686-a1d28a11e3ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80',
                  ),
                ),
                ProductCheckboxTile(
                  productData: ProductData(
                    id: '1',
                    serviceId: '1',
                    name: 'Chips',
                    price: 1000,
                    productImageUrl:
                        'https://images.unsplash.com/photo-1657826181686-a1d28a11e3ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80',
                  ),
                ),
                ProductCheckboxTile(
                  productData: ProductData(
                    id: '1',
                    serviceId: '1',
                    name: 'Chips',
                    price: 1000,
                    productImageUrl:
                        'https://images.unsplash.com/photo-1657826181686-a1d28a11e3ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
