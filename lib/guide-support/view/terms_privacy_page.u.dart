import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../l10n/l10n.dart';

class TermsPrivacyPage extends StatelessWidget {
  const TermsPrivacyPage({super.key});

  final _htmlContent = """
  <div>
    <h1>This is a title</h1>
    <p>This is a <strong>paragraph</strong>.</p>
    <p>I like <i>dogs</i></p>
    <p>Red text</p>
    <ul>
        <li>List item 1</li>
        <li>List item 2</li>
        <li>List item 3</li>
    </ul>
    <img src='https://www.kindacode.com/wp-content/uploads/2020/11/my-dog.jpg' />
  </div>
  """;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Điều khoản và bảo mật',
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        // child: Padding(
        //   padding: const EdgeInsets.fromLTRB(16, 32, 12, 0),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: <Widget>[
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           SizedBox(
        //             width: 100,
        //             child: Assets.screens.logoTrans.svg(),
        //           ),
        //         ],
        //       ),
        //       const SizedBox(
        //         height: 16,
        //       ),
        //       AutoSizeText(
        //         '''  Khi sử dụng Dịch vụ, sử dụng ừng dụng REVUP, Quý khách cam kết và bảo đảm rằng:''',
        //         style: Theme.of(context).textTheme.labelLarge,
        //       ),
        //       AutoSizeText(
        //         ''' 1. Có năng lực hành vi dân sự đầy đủ theo quy định của pháp luật hiện hành để chấp thuận và đồng ý với Điều khoản sử dụng; có quyền, thẩm quyền và năng lực để sử dụng Dịch vụ và tuân theo Điều khoản sử dụng này.''',
        //         style: Theme.of(context).textTheme.labelLarge,
        //       ),
        //       AutoSizeText(
        //         ''' 2. Những thông tin cung cấp cho REVUP luôn đảm bảo cập nhật, đầy đủ và xác thực.''',
        //         style: Theme.of(context).textTheme.labelLarge,
        //       ),
        //       AutoSizeText(
        //         ''' 3. Không đươc chuyển giao, chuyển nhượng tài khoản người dùng ứng dụng revup của mình cho bất kỳ cá nhân hoặc tổ chức nào''',
        //         style: Theme.of(context).textTheme.labelLarge,
        //       ),
        //       AutoSizeText(
        //         ''' 4. Cam kết luôn tuân thủ quy định của pháp luật hiện hành liên quan được áp dụng tại các quốc gia của mình và tại Việt Nam''',
        //         style: Theme.of(context).textTheme.labelLarge,
        //       ),
        //       AutoSizeText(
        //         ''' 5. Khi sử dụng dịch vụ của chúng tôi, bạn tin tưởng cung cấp thông tin của bạn cho chúng tôi. Chúng tôi hiểu rằng đây là một trách nhiệm lớn và chúng tôi nỗ lực bảo vệ thông tin của bạn cũng như để bạn nắm quyền kiểm soát.''',
        //         style: Theme.of(context).textTheme.labelLarge,
        //       ),

        //     ],
        //   ),
        // ),
        child: Html(
          data: _htmlContent,
          style: {
            'h1': Style(color: Colors.red),
            'p': Style(color: Colors.black87, fontSize: FontSize.medium),
            'ul': Style(margin: const EdgeInsets.symmetric(vertical: 20))
          },
        ),
      ),
    );
  }
}
