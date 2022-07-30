import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Về chúng tôi',
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 12, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80,
                    child: Assets.screens.iconsZalo.svg(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                  ),
                  AutoSizeText(
                    'Tầm nhìn',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              AutoSizeText(
                ''' Chúng tôi mong muốn trở thành một phần không thể tách rời trong cuộc sống hằng ngày của mỗi người Việt Nam.''',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80,
                    child: Assets.screens.iconsZalo.svg(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                  ),
                  AutoSizeText(
                    'Sứ mệnh',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              AutoSizeText(
                '''  Với quyết tâm trở thành người tiên phong tạo ra những chuẩn mực mới về chất lượng, chúng tôi cam kết luôn đặt sự hài lòng của khách hàng là trọng tâm trong từng hành động dù là nhỏ nhất.''',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    'Giá trị thương hiệu',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                    child: Assets.screens.iconsZalo.svg(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                  ),
                  AutoSizeText(
                    'Vì Cộng Đồng',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                    child: Icon(
                      Icons.sos,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                  ),
                  AutoSizeText(
                    'Không Ngừng Đổi Mới',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                    child: Assets.screens.iconsZalo.svg(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                  ),
                  AutoSizeText(
                    'Tạo Điều Kiện Phát Triển',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
