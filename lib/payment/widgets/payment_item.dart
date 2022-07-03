import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentItem extends StatelessWidget {
  // ignore: lines_longer_than_80_chars
  const PaymentItem({
    super.key,
    required this.paymentIcon,
    required this.paymentName,
  });
  final SvgPicture paymentIcon;
  final String paymentName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 50, 16, 0),
      child: TextButton.icon(
        style: TextButton.styleFrom(
          fixedSize: const Size(160, 60),
          textStyle: const TextStyle(color: Color.fromARGB(255, 41, 44, 46)),
          backgroundColor: const Color.fromARGB(255, 214, 211, 211),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: () {},
        icon: SizedBox(
          width: 50,
          child: paymentIcon,
        ),
        label: Text(
          paymentName,
          style: const TextStyle(
            fontSize: 14,
            color: Color.fromARGB(255, 24, 23, 23),
          ),
        ),
      ),
    );
  }
}
