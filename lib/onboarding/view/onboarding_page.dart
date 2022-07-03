import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../../l10n/l10n.dart';

import '../../gen/assets.gen.dart';
import '../../router/router.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return SafeArea(
      child: IntroductionScreen(
        pages: [
          _buildOnboardItem(
            l10n.onboardPageFirstTitle,
            Assets.screens.orderConfirm.svg(),
            Theme.of(context).textTheme.displaySmall,
          ),
          _buildOnboardItem(
            l10n.onboardPageSecondTitle,
            Assets.screens.destination.svg(),
            Theme.of(context).textTheme.displaySmall,
          ),
          _buildOnboardItem(
            l10n.onboardPageThirdTitle,
            Assets.screens.mobilePay.svg(),
            Theme.of(context).textTheme.displaySmall,
          ),
        ],
        showSkipButton: true,
        onDone: () => context.router.push(const TestRoute()),
        onSkip: () => context.router.push(const TestRoute()),
        skip: Text(l10n.btnSkipText),
        done: Text(l10n.btnNextText),
        next: Text(l10n.btnDoneText),
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

  PageViewModel _buildOnboardItem(
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
