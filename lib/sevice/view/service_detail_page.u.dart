import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../l10n/l10n.dart';
import '../model/sevice_data.dart';

class ServiceDetailPage extends StatelessWidget {
  const ServiceDetailPage({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final services = ServiceData.fetchAll();
    int totalPrice = 0;
    for (var i = 0; i < services.length; i++) {
      totalPrice += services.elementAt(i).price;
    }
//final totalPriceService =  totalPrice.(services);
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
            child: Text(l10n.cancelLabel),
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Column(
              children: [
                SizedBox(
                  child: Row(
                    children: <Widget>[
                      AutoSizeText(
                        l10n.serviceDetailLabel,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      AutoSizeText(
                        l10n.serviceRequestLabel,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      IconButton(
                        icon: const Icon(Icons.add_box_outlined),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: services.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            AutoSizeText(
                              services.elementAt(index).name,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            AutoSizeText(
                              '${services.elementAt(index).price}Đ',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      AutoSizeText(
                        l10n.total,
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      AutoSizeText(
                        //'${service.price}Đ',
                        '$totalPriceĐ',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 300,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: ElevatedButton(
                onPressed: null,
                style: Theme.of(context).elevatedButtonTheme.style,
                child: AutoSizeText(
                  l10n.updateLabel,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
