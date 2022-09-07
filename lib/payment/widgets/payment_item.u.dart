import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({
    super.key,
    required this.paymentIcon,
    required this.paymentName,
    required this.callback,
  });
  final Widget paymentIcon;
  final String paymentName;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 50, 16, 0),
      child: TextButton.icon(
        style: TextButton.styleFrom(
          fixedSize: const Size(160, 60),
          textStyle: Theme.of(context).textTheme.labelLarge,
          backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: callback,
        icon: SizedBox(
          width: 40,
          child: paymentIcon,
        ),
        label: AutoSizeText(
          paymentName,
          style: Theme.of(context)
              .textTheme
              .labelLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
