import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../widgets/service_list_tile.dart';

class ServiceDetailsPage extends StatelessWidget {
  const ServiceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(l10n.serviceDetailsAppBarTitle),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 28),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AutoSizeText(l10n.serviceInforLabel),
              const ServiceListTile(
                title: 'Thay phanh',
                subtitle: 'Tiền công: 20.000đ',
                imageUrl:
                    'https://images.unsplash.com/photo-1574158622682-e40e69881006?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
                imageSize: 48,
              ),
              AutoSizeText(l10n.productListLabel),
              const ServiceListTile(
                title: 'Săm xe máy Sao Vàng loại SRC',
                subtitle: 'Đơn giá : 150.000đ',
                imageUrl:
                    'https://images.unsplash.com/photo-1596854407944-bf87f6fdd49e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2080&q=80',
                imageSize: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
