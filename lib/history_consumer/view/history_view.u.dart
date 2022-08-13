import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/history_bloc.dart';
import '../widgets/order_overview.u.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              BlocBuilder<HistoryBloc, HistoryState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () =>
                        const Center(child: CircularProgressIndicator()),
                    success: (histories) {
                      final historyOrders = histories.toList();

                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: historyOrders.length,
                        itemBuilder: (BuildContext context, int index) {
                          return HistoryOverview(
                            historyModel: historyOrders[index],
                          );
                        },
                      );
                    },
                  );
                },
              ),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
