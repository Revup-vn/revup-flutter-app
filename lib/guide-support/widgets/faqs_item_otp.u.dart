import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class FAQsItemOTPPage extends StatelessWidget {
  const FAQsItemOTPPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Bài viết',
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 12, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AutoSizeText(
                '''[Tài khoản revup] Tại sao tôi không nhận được Mã xác minh (OTP)?''',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              AutoSizeText(
                '''  Nếu bạn không nhận được Mã xác minh OTP khi đăng nhập hoặc thay đổi mật khẩu tài khoản qua tin nhắn SMS, nguyên nhân có thể là do:''',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              AutoSizeText(
                '''
                  Trong trường hợp này, bạn có thể thử những hướng giải quyết sau:
                . Kiểm tra lại sóng dịch vụ viễn thông trên điện thoại của bạn đủ mạnh
                . Yêu cầu gửi lại Mã xác minh OTP (cho phép tối đa 04 lần)
                . Lắp lại thẻ SIM và thử lại yêu cầu gửi lại Mã xác minh OTP''',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
