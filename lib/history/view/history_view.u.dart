import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:revup_core/core.dart';

import '../../l10n/l10n.dart';
import '../widgets/history_item.u.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    var user = AppUser.consumer(
      uuid: '1a',
      firstName: 'Nam',
      lastName: 'Ngoc',
      phone: '0866199497',
      dob: DateTime.now(),
      addr: 'Ninh Binh',
      email: 'namngoc231@gmail.com',
      active: true,
      avatarUrl:
          'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280s.jpg',
      createdTime: DateTime.now(),
      lastUpdatedTime: DateTime.now(),
    );

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        AutoSizeText(
                          'Lịch sử',
                          style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(fontWeight: FontWeight.bold) ??
                              const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    HistoryItem(
                      user: user,
                      callback: () {},
                    ),
                    HistoryItem(
                      user: user,
                      callback: () {},
                    ),
                    HistoryItem(
                      user: user,
                      callback: () {},
                    ),
                    HistoryItem(
                      user: user,
                      callback: () {},
                    ),
                    HistoryItem(
                      user: user,
                      callback: () {},
                    ),
                    HistoryItem(
                      user: user,
                      callback: () {},
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            // bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: ElevatedButton(
                onPressed: () {},
                style: Theme.of(context).elevatedButtonTheme.style,
                child: const AutoSizeText('Liên hệ dịch vụ sửa chữa'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
