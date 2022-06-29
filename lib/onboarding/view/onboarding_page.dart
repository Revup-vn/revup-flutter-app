import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:revup/app/router/router.dart';
import 'package:revup/l10n/l10n.dart';

import '../../gen/assets.gen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    const widthSizedBox = 350.0;
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      titlePadding: EdgeInsets.zero,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.only(top: 30.0),
    );
    final pageViewModels = [
      PageViewModel(
        title: l10n.introPageFirstTitle,
        body: '',
        image: Center(
          child: SizedBox(
            width: widthSizedBox,
            child: Assets.screens.orderConfirm.svg(),
          ),
        ),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: l10n.introPageSecondTitle,
        body: '',
        image: Center(
          child: SizedBox(
            width: widthSizedBox,
            child: Assets.screens.destination.svg(),
          ),
        ),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: l10n.introPageThirdTitle,
        body: '',
        image: Center(
          child: SizedBox(
            width: widthSizedBox,
            child: Assets.screens.mobilePay.svg(),
          ),
        ),
        decoration: pageDecoration,
      ),
    ];

    return IntroductionScreen(
      pages: pageViewModels,
      showSkipButton: true,
      onDone: () => context.router.push(const TestRoute()),
      onSkip: () => context.router.push(const TestRoute()),
      skip: Text(l10n.txtBtnSkip),
      done: Text(l10n.txtBtnDone),
      next: Text(l10n.txtBtnNext),
      skipStyle: TextButton.styleFrom(primary: Colors.black),
      doneStyle: TextButton.styleFrom(primary: Colors.black),
      nextStyle: TextButton.styleFrom(primary: Colors.black),
      controlsPosition: const Position(left: 0, right: 0, bottom: 100),
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        activeColor: Color(0xFFFCD04E),
        size: Size(10.0, 10.0),
        activeSize: Size(25.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
