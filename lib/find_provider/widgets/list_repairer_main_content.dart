import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

class ListRepairerContent extends StatefulWidget {
  const ListRepairerContent({super.key});

  @override
  State<StatefulWidget> createState() => _ListRepairerContent();
}

class _ListRepairerContent extends State<ListRepairerContent> {
  Future refresh() async {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: refresh,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Theme.of(context).colorScheme.surface,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListBody(
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 9,
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              child: Image.network(
                                'https://fandom.vn/wp-content/uploads/2019/04/naruto-uchiha-itachi-1.jpg',
                              ),
                            ),
                            title: AutoSizeText(
                              'Nguyễn Văn A',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            subtitle: AutoSizeText(
                              'Cửa hàng sửa xe A, 14A, ngõ Thanh Bình',
                              style: Theme.of(context).textTheme.bodyMedium,
                              maxLines: 1,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: <Widget>[
                                AutoSizeText(
                                  '4.9',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                  size: 18,
                                ),
                                AutoSizeText(
                                  '(109)',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                const Icon(
                                  Icons.location_pin,
                                  size: 18,
                                ),
                                AutoSizeText(
                                  '500 m',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                const Icon(
                                  Icons.timer,
                                  size: 18,
                                ),
                                AutoSizeText(
                                  '10 minute',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 5,
        ),
      ),
    );
  }
}
