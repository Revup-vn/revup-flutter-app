import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../router/app_router.gr.dart';
import '../widgets/faqs_item_detail.u.dart';

class FAQsPage extends StatelessWidget {
  const FAQsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Câu hỏi thường gặp',
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
              FAQsItem(
                faqsName: 'Tại sao tôi không nhận được Mã xác minh (OTP)?',
                callback: () {
                  context.router.push(
                    const FAQsItemOTPRoute(),
                  );
                }, // TODO(namngoc231): go to faqs detail
              ),
              FAQsItem(
                faqsName: 'Làm sao để gọi điện trên ứng dụng Revup?',
                callback: () {
                  context.router.push(
                    const AboutUsRoute(),
                  );
                }, // TODO(namngoc231): go to faqs detail
              ),
              FAQsItem(
                faqsName: 'Làm sao để thanh toán trên ứng dụng Revup?',
                callback: () {
                  context.router.push(
                    const TermsPrivacyRoute(),
                  );
                }, // TODO(namngoc231): go to faqs detail
              ),
              FAQsItem(
                faqsName: 'Tại sao tài khoản REVUP của tôi bị khoá?',
                callback: () {}, // TODO(namngoc231): go to faqs detail
              ),
            ],
          ),
        ),
      ),
    );
  }
}
