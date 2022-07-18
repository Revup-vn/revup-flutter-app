import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RepairerProfileServices extends StatelessWidget {
  RepairerProfileServices({super.key});

  final List<String> item1 = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFmMQW_46WiQGj4DA4Z_DcXz2RrBE7gr7v9qqmOTydEkLH02RVePhWZsSoa-G1UwhtP2A&usqp=CAU',
    'Thay xăm',
    '80.000',
    '1.500.000',
  ];
  final List<String> item2 = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFmMQW_46WiQGj4DA4Z_DcXz2RrBE7gr7v9qqmOTydEkLH02RVePhWZsSoa-G1UwhtP2A&usqp=CAU',
    'Thay xăm',
    '80.000',
    '1.200.000',
  ];
  @override
  Widget build(BuildContext context) {
    final iListItems = <List<String>>[item1, item2];
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Theme.of(context).colorScheme.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: InkWell(
            onTap: () {},
            child: ListBody(
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(48),
                              child: CircleAvatar(
                                child: CachedNetworkImage(
                                  height: 64,
                                  width: 64,
                                  fit: BoxFit.fitWidth,
                                  imageUrl: iListItems[index][0],
                                ),
                              ),
                            ),
                            title: AutoSizeText(
                              iListItems[index][1],
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                              maxLines: 1,
                            ),
                            subtitle: AutoSizeText(
                              'Đơn giá : ${iListItems[index][2]}đ - ${iListItems[index][3]}đ',
                              style: Theme.of(context).textTheme.bodyMedium,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
      itemCount: iListItems.length,
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 5,
      ),
    );
  }
}
