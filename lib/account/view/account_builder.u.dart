import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/widgets/loading.u.dart';
import '../bloc/account_bloc.dart';
import 'account_view.u.dart';

class AccountBuilder extends StatelessWidget {
  const AccountBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    context.watch<AccountBloc>().state.maybeWhen(
          initial: () {
            return context
                .read<AccountBloc>()
                .add(const AccountEvent.started());
          },
          orElse: () => false,
        );

    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) => state.maybeWhen(
        orElse: Container.new,
        loading: Loading.new,
        success: (aUser, newImgUrl) =>
            AccountView(user: aUser, newImgPhoto: newImgUrl),
      ),
    );
  }
}
