import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';

import '../models/service_data.u.dart';

class RepairerProfileServices extends StatelessWidget {
  const RepairerProfileServices(this.serviceData, {super.key});
  final IVector<ServiceData> serviceData;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Theme.of(context).colorScheme.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: InkWell(
            onTap: () {
              // TODO(wanynobe): rount to service detail screen
            },
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
                                  imageUrl: serviceData
                                          .get(index)
                                          .getOrElse(ServiceData.new)
                                          .imageURL ??
                                      '',
                                ),
                              ),
                            ),
                            title: AutoSizeText(
                              serviceData
                                      .get(index)
                                      .getOrElse(ServiceData.new)
                                      .name ??
                                  '',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                              maxLines: 1,
                            ),
                            subtitle: AutoSizeText(
                              '''Đơn giá : ${serviceData.get(index).getOrElse(ServiceData.new).serviceFee ?? ''}đ''',
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
                ),
              ],
            ),
          ),
        );
      },
      itemCount: serviceData.length(),
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 5,
      ),
    );
  }
}
