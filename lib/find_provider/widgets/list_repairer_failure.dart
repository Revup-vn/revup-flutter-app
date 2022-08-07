import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/find_list_repairer_bloc.dart';

class ListRepairerLoadDataFailure extends StatelessWidget {
  const ListRepairerLoadDataFailure(this.errorMessage, {super.key});
  final String? errorMessage;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        log('message');
        context.read<FindListRepairerBloc>().add(
              const FindListRepairerEvent.started(),
            );
      },
      child: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        errorMessage ??
                            '''something went wrong please refresh or restart app''',
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Center(
            child: Icon(
              Icons.no_accounts_outlined,
              size: 128,
            ),
          ),
        ],
      ),
    );
  }
}
