import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:revup/l10n/l10n.dart';
import '../../account/widgets/circle_avatar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 100,
            color: Colors.white,
            child: SizedBox(
              child: SvgPicture.asset(
                'assets/screens/logo_trans.svg',
                alignment: Alignment.bottomLeft,
              ),
            ),
          ),
          Container(
            height: 140,
            color: Colors.orange,
            alignment: Alignment.center, // where to position the child
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 255, 255, 255),
                    spreadRadius: 6,
                  ),
                ],
              ),
              width: 350,
              height: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(
                        'assets/screens/sos.svg',
                        width: 70,
                      ),
                      const Text('Gọi cứu hộ'),
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(
                        'assets/screens/vehicle_maintenance.svg',
                        width: 70,
                      ),
                      const Text('Bảo dưỡng xe'),
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(
                        'assets/screens/gas_station.svg',
                        width: 70,
                      ),
                      const Text('Tìm cây xăng'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text('Đánh giá lần sửa chữa gần nhất của bạn'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  CircleAvatarAccount(
                    radiusCircleAvatar: 30,
                    radiusCircleAvatarIcon: 0,
                    sizeIcon: 0,
                    sizeText: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text('Quang Nghĩa'),
                  ),
                ],
              ),
              Column(
                children: const [
                  Text('Dịch vụ: sửa chữa ô tô'),
                  Text('Thời gian: 16:10 - 17:00'),
                  Text('Ngày: 17/ 10/2022 '),
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 35,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 35,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 35,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 35,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                      size: 35,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
            child: Text('Khám phá ngay'),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  'https://www.tiendauroi.com/wp-content/uploads/2020/02/shopee-freeship-xtra-750x233.jpg',
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text('Ưu đãi dành cho bạn'),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  'https://e-magazine.asiamedia.vn/wp-content/uploads/2021/07/top-10-hang-dau-nhot-noi-tieng-nhat-tai-viet-nam-21.jpg',
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: l10n.homeLabel,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.restore),
            label: l10n.activateLabel,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.notifications),
            label: l10n.notificationLabel,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.account_circle),
            label: l10n.accountLabel,
          ),
        ],
      ),
    );
  }
}
