import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../../router/router.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return SafeArea(
      child: IntroductionScreen(
        pages: [
          _toOnboardModel(
            l10n.onboardPageFirstTitle,
            Assets.screens.orderConfirm.svg(),
            Theme.of(context).textTheme.displaySmall,
          ),
          _toOnboardModel(
            l10n.onboardPageSecondTitle,
            Assets.screens.destination.svg(),
            Theme.of(context).textTheme.displaySmall,
          ),
          _toOnboardModel(
            l10n.onboardPageThirdTitle,
            Assets.screens.mobilePay.svg(),
            Theme.of(context).textTheme.displaySmall,
          ),
        ],
        showSkipButton: true,
        onDone: () => context.router.push(const LoginRoute()),
        onSkip: () => context.router.push(const LoginRoute()),
        skip: AutoSizeText(l10n.skipLabel),
        done: AutoSizeText(l10n.doneLabel),
        next: AutoSizeText(l10n.nextLabel),
        controlsPadding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
        dotsDecorator: DotsDecorator(
          activeColor: Theme.of(context).colorScheme.primary,
          size: const Size(10, 10),
          activeSize: const Size(25, 10),
          activeShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
        ),
      ),
    );
  }

  PageViewModel _toOnboardModel(
    String pageTitle,
    SvgPicture pageSvgImage,
    TextStyle? textStyle,
  ) {
    return PageViewModel(
      title: pageTitle,
      body: '',
      image: Center(
        child: SizedBox(
          width: 350,
          child: pageSvgImage,
        ),
      ),
      decoration: PageDecoration(
        titleTextStyle: textStyle ??
            const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        titlePadding: EdgeInsets.zero,
        bodyPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        imagePadding: const EdgeInsets.only(top: 30),
      ),
    );
  }
}
