import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

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
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
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
                  icon: Icon(
                    Icons.arrow_back,
                    size: Theme.of(context).iconTheme.size,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.onSurface,
                      width: 0.8,
                    ),
                  ),
                  child: DropdownButton(
                    isDense: true,
                    dropdownColor:
                        Theme.of(context).colorScheme.onSurfaceVariant,
                    hint: Text(
                      context.l10n.sortAsLabel,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontWeight: FontWeight.bold),
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
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(fontWeight: FontWeight.bold),
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
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListRepairerContent(),
            ),
          ],
        ),
      ),
    );
  }
}
