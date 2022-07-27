import 'package:auto_route/auto_route.dart';

import '../../splash/splash.dart';
import '../account/view/account_page.u.dart';
import '../activate/view/activate_page.u.dart';
import '../home/view/home_page.u.dart';
import '../home/widgets/home_body_page.u.dart';
import '../login/view/login_page.dart';
import '../notification_page/view/notification_page.u.dart';
import '../onboarding/view/onboarding_page.dart';
import '../payment/view/payment_page.u.dart';
import '../profile/view/update_profile_page.u.dart';
import '../service/choose-product/view/choose_product_page.dart';
import '../service/choose-service/view/choose_service_page.dart';
import '../service/choose-service/view/service_details_page.dart';
import '../service/models/service_data.dart';
import '../service/new-service/view/new_service_request_page.dart';
import '../test/test.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute<void>(
      page: SplashPage,
    ),
    AdaptiveRoute<void>(
      page: HomePage,
      initial: true,
      children: [
        AdaptiveRoute<void>(page: HomeBodyPage),
        AdaptiveRoute<void>(page: ActivatePage),
        AdaptiveRoute<void>(page: NotificationPage),
        AdaptiveRoute<void>(page: AccountPage),
      ],
    ),
    AdaptiveRoute<void>(page: PaymentPage),
    AdaptiveRoute<void>(page: UpdateProfilePage),
    AdaptiveRoute<void>(page: TestPage),
    AdaptiveRoute<void>(page: LoginPage),
    AdaptiveRoute<void>(page: OnboardingPage),
    AdaptiveRoute<void>(page: ChooseServicePage),
    AdaptiveRoute<ServiceData>(page: NewServiceRequestPage),
    AdaptiveRoute<void>(page: ServiceDetailsPage),
    AdaptiveRoute<void>(page: ChooseProductPage),
  ],
)
class $AppRouter {}
