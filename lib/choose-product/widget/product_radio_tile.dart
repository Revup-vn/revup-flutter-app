import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../choose-service/models/product_data.dart';
import '../../gen/assets.gen.dart';

class ProductRadioTile extends StatefulWidget {
  const ProductRadioTile({super.key, required this.productData, this.onTap});
  final ProductData productData;
  final VoidCallback? onTap;
  @override
  State<ProductRadioTile> createState() => _ProductRadioTileState();
}

class _ProductRadioTileState extends State<ProductRadioTile> {
  String? _groupValue;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        onTap: widget.onTap,
        leading: SizedBox(
          height: 48,
          width: 48,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(48),
            child: CachedNetworkImage(
              imageUrl: widget.productData.productImageUrl!,
              placeholder: (context, url) => Assets.screens.dfAvatar.image(
                fit: BoxFit.cover,
                height: 64,
                gaplessPlayback: true,
                width: 64,
              ),
              // ignore: implicit_dynamic_parameter
              errorWidget: (context, url, error) {
                return Assets.screens.dfAvatar.image(
                  fit: BoxFit.cover,
                  height: 64,
                  gaplessPlayback: true,
                  width: 64,
                );
              },
              height: 64,
              width: 64,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        title: AutoSizeText(widget.productData.name!),
        subtitle: const AutoSizeText('Đơn giá: '),
        trailing: Radio(
          value: widget.productData.id ?? '',
          groupValue: _groupValue,
          onChanged: (String? value) {
            setState(() {
              _groupValue = value;
            });
          },
        ),
      ),
    );
  }
}
