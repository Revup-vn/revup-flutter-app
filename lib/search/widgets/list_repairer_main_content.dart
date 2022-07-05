import 'package:flutter/material.dart';

class ListRepairerContent extends StatefulWidget{
  const ListRepairerContent({super.key});

  @override
  State<StatefulWidget> createState() => _ListRepairerContent();
}
class _ListRepairerContent extends State<ListRepairerContent>{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListBody(
            children: [
              ListTile(
                leading: CircleAvatar(
                  child: Image.network('https://i.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI'),
                ),
                title: Text('Nguyễn Văn A',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                ),
                ),
                subtitle: Text('Cửa hàng sửa xe A, 14A, ngõ Thanh Bình',
                  style: Theme.of(context).textTheme.bodyMedium,
                  maxLines: 1,
                ),
              ),
              Row(
                children: <Widget>[
                  Text(
                    '4.9',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Icon(
                    Icons.star,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  Text(
                    '(109)',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const Icon(Icons.location_pin),
                  Text(
                    '500 m',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  const Icon(Icons.timer),
                  Text(
                    '10 minute',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ],
          ),
        );
      }, 
      itemCount: 10, 
      separatorBuilder: (BuildContext context, int index) => const Divider(
        height: 12,
      ),
    );
  }

}
