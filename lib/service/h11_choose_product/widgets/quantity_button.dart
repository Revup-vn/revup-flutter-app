import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class QuantityButtonCustom extends StatefulWidget {
  const QuantityButtonCustom({
    super.key,
    required this.height,
    required this.width,
  });
  final double height;
  final double width;
  @override
  State<QuantityButtonCustom> createState() => _QuantityButtonCustomState();
}

class _QuantityButtonCustomState extends State<QuantityButtonCustom> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).cardColor,
      ),
      child: FormBuilderField<int>(
        name: 'quantity',
        initialValue: 1,
        builder: (field) => Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  if (mounted && count > 1) {
                    field.didChange(count - 1);
                    setState(() {
                      count = count - 1;
                    });
                  }
                },
                child: const Icon(
                  Icons.remove,
                  size: 16,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.white,
              ),
              child: Text(
                count.toString(),
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  if (mounted && count < 100) {
                    field.didChange(count + 1);
                    setState(() {
                      count = count + 1;
                    });
                  }
                },
                child: const Icon(
                  Icons.add,
                  size: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
