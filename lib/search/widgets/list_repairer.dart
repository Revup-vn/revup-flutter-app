import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import 'list_repairer_main_content.dart';

class ListRepairer extends StatefulWidget {
  const ListRepairer({super.key});

  @override
  State<StatefulWidget> createState() => _ListRepairer();
}

class _ListRepairer extends State<ListRepairer> {
  late String defaultDropdownMenuValue = '';
  bool hasValue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                IconButton(
                  alignment: const Alignment(-4, 0),
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                  onPressed: () {},
                ),
                AutoSizeText(
                  context.l10n.repairerAroundLabel,
                  style: Theme.of(context).textTheme.headlineSmall,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(right: 16),
              alignment: Alignment.centerRight,
              child: DropdownButton(
                isDense: true,
                dropdownColor: Theme.of(context).colorScheme.onSurfaceVariant,
                hint: Text(
                  context.l10n.sortAsLabel,
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                value: hasValue ? defaultDropdownMenuValue : null,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: Theme.of(context).chipTheme.labelStyle,
                items: <String>[
                  (context.l10n.sortAsDistanceLabel),
                  (context.l10n.sortAsRatingLabel),
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: Theme.of(context).textTheme.labelLarge,
                      textAlign: TextAlign.center,
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    defaultDropdownMenuValue = newValue!;
                    hasValue = true;
                  });
                },
              ),
            ),
            const Expanded(
              child: ListRepairerContent(),
            ),
            
          ],
        ),
      ),
    );
  }
}
