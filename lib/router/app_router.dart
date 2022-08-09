import 'package:auto_route/auto_route.dart';
import 'package:revup_core/core.dart';

import '../../splash/splash.dart';
import '../account/view/account_page.u.dart';
import '../add_message/view/add_message_page.dart';
import '../find_nearby/view/find_nearby_page.dart';
import '../find_provider/view/list_repairer_page.u.dart';
import '../guide-support/view/about_us_page.u.dart';
import '../guide-support/view/faqs_page.u.dart';
import '../guide-support/view/terms_privacy_page.u.dart';
import '../guide-support/widgets/faqs_item_otp.u.dart';
import '../history_consumer/view/history_consumer_page.u.dart';
import '../history_consumer/view/history_detail_consumer_page.u.dart';
import '../home/view/home_page.u.dart';
import '../home/widgets/home_body_page.u.dart';
import '../invoice/view/service_invoice_page.u.dart';
import '../invoice_payment/view/invoice_payment_page.u.dart';
import '../login/login_enter_phone/view/login_enter_phone_number_page.u.dart';
import '../login/view/login_page.u.dart';
import '../notification_consumer/view/notification_consumer_page.u.dart';
import '../onboarding/view/onboarding_page.dart';
import '../order-sevice/view/order_detail_page.u.dart';
import '../order-sevice/view/repair_status_page.u.dart';
import '../order/order_overview/view/overview_order_page.u.dart';
import '../otp/view/otp_page.u.dart';
import '../payment/view/payment_page.u.dart';
import '../profile/view/signup6_page.u.dart';
import '../profile/view/update_profile_page.u.dart';
import '../repairer_profile/view/repairer_profile_page.u.dart';
import '../request_provider/view/request_provider_page.dart';
import '../review-repairman/view/review_repairman_page.u.dart';
import '../service/choose_product/view/choose_product_page.dart';
import '../service/choose_service/view/choose_service_page.dart';
import '../service/new_service/view/new_service_request_page.dart';
import '../service/service-details/view/service_detail_page.dart';
import '../test/test.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute<void>(page: SplashPage),
    AdaptiveRoute<void>(page: OrderDetailPage),
    AdaptiveRoute<void>(page: RepairStatusPage),
    AdaptiveRoute<void>(page: ServiceInvoicePage),
    AdaptiveRoute<void>(page: InvoicePaymentPage),
    AdaptiveRoute<void>(page: ReviewRepairmanPage),
    AdaptiveRoute<void>(
      page: HomePage,
      initial: true,
      children: [
        AdaptiveRoute<void>(page: HomeBodyPage),
        AdaptiveRoute<void>(page: HistoryConsumerPage),
        AdaptiveRoute<void>(page: NotificationConsumerPage),
        AdaptiveRoute<void>(page: AccountPage),
      ],
    ),
    AdaptiveRoute<void>(page: HistoryConsumerDetailPage),
    AdaptiveRoute<void>(page: PaymentPage),
    AdaptiveRoute<void>(page: TestPage),
    AdaptiveRoute<void>(page: UpdateProfilePage),
    AdaptiveRoute<void>(page: LoginPage),
    AdaptiveRoute<void>(page: OnboardingPage),
    AdaptiveRoute<void>(page: OTPPage),
    AdaptiveRoute<void>(page: Signup6Page),
    AdaptiveRoute<void>(page: ChooseServicePage),
    AdaptiveRoute<OptionalService>(page: NewServiceRequestPage),
    AdaptiveRoute<void>(page: ServiceDetailPage),
    AdaptiveRoute<void>(page: ChooseProductPage),
    AdaptiveRoute<void>(page: FindNearbyPage),
    AdaptiveRoute<void>(page: RequestProviderPage),
    AdaptiveRoute<void>(page: ListRepairerPage),
    AdaptiveRoute<void>(page: RepairerProfilePage),
    AdaptiveRoute<void>(page: AddMessagePage),
    AdaptiveRoute<void>(page: OverViewOrderPage),
    AdaptiveRoute<void>(page: FAQsPage),
    AdaptiveRoute<void>(page: FAQsItemOTPPage),
    AdaptiveRoute<void>(page: AboutUsPage),
    AdaptiveRoute<void>(page: TermsPrivacyPage),
    AdaptiveRoute<void>(page: LoginEnterPhonePage),
  ],
)
class $AppRouter {}
