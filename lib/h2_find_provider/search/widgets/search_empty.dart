import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../../l10n/l10n.dart';

class SearchEmpty extends StatelessWidget {
  const SearchEmpty({
    super.key,
    required this.keyword,
    required this.resultCount,
    required this.radius,
  });
  final String keyword;
  final double radius;
  final int resultCount;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: AutoSizeText.rich(
                  TextSpan(
                    text: l10n.resultForLabel,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      if (keyword.isNotEmpty)
                        TextSpan(
                          text: ' "$keyword" ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      TextSpan(text: l10n.withinRadiusLabel),
                      TextSpan(
                        text: ' $radius km',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      )
                    ],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                '$resultCount ${l10n.resultCountLabel}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.screens.empty.svg(
                  width: 250,
                  height: 250,
                ),
                const SizedBox(
                  height: 8,
                ),
                AutoSizeText(
                  l10n.notFoundLabel,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onBackground,
                          ) ??
                      const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
