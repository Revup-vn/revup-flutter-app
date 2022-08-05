import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../l10n/l10n.dart';
import '../../widgets/service_list_tile.dart';

class ServiceDetailView extends StatelessWidget {
  const ServiceDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(l10n.serviceDetailsAppBarTitle),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
                AutoSizeText(l10n.serviceInforLabel),
                const ServiceListTile(
                  title: '',
                  subtitle: '',
                  imageUrl: '',
                ),
                AutoSizeText(l10n.productListLabel),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 0,
                  itemBuilder: (context, index) {
                    return const ServiceListTile(
                      title: '',
                      subtitle: '',
                      imageUrl:
                          '',
                    );
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
