import 'package:auto_route/auto_route.dart';
import 'package:revup_core/core.dart';

import '../../splash/splash.dart';
import '../account/view/account_page.u.dart';
import '../activate/history/view/view.dart';
import '../activate/history_provider_detail/history_provider_detail.dart';
import '../add_message/view/add_message_page.u.dart';
import '../add_report/view/add_report_page.u.dart';
import '../change_language/view/change_language_page.dart';
import '../guide-support/view/about_us_page.u.dart';
import '../guide-support/view/faqs_page.u.dart';
import '../guide-support/view/terms_privacy_page.u.dart';
import '../guide-support/widgets/faqs_item_otp.u.dart';
import '../h1_find_nearby/view/find_nearby_page.u.dart';
import '../h22_invoice/view/service_invoice_page.u.dart';
import '../h23_invoice_payment/view/invoice_payment_page.u.dart';
import '../h26_review-repairman/view/review_repairman_page.u.dart';
import '../h2_find_provider/view/list_repairer_page.u.dart';
import '../h6_request_provider/view/request_provider_page.dart';
import '../history_consumer/view/history_detail_page.u.dart';
import '../home/view/home_page.u.dart';
import '../home/widgets/home_body_page.u.dart';
import '../login/login_enter_phone/view/login_enter_phone_number_page.u.dart';
import '../login/view/login_page.u.dart';
import '../notification_page/view/notification_page.u.dart';
import '../onboarding/view/onboarding_page.dart';
import '../order/h9_order_overview/view/overview_order_page.u.dart';
import '../order/order-sevice/view/order_detail_page.u.dart';
import '../order/order-sevice/view/repair_status_page.u.dart';
import '../otp/view/otp_page.u.dart';
import '../payment/view/payment_page.u.dart';
import '../permission_page/permission_page.u.dart';
import '../profile/view/update_profile_page.u.dart';
import '../repairer_profile/view/repairer_profile_page.u.dart';
import '../report/view/report_page.u.dart';
import '../service/choose_service/view/choose_service_page.u.dart';
import '../service/h11_choose_product/view/choose_product_page.u.dart';
import '../service/new_service/view/new_service_request_page.u.dart';
import '../service/service-details/view/service_detail_page.u.dart';
import '../signup/view/signup_page.u.dart';
import '../test/test.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute<void>(page: SplashPage, initial: true),
    AdaptiveRoute<void>(page: OrderDetailPage),
    AdaptiveRoute<void>(page: RepairStatusPage),
    AdaptiveRoute<void>(page: ServiceInvoicePage),
    AdaptiveRoute<void>(page: InvoicePaymentPage),
    AdaptiveRoute<void>(page: ReviewRepairmanPage),
    AdaptiveRoute<void>(page: ChangeLanguagePage),
    AdaptiveRoute<void>(page: ReportPage),
    AdaptiveRoute<void>(
      page: HomePage,
      children: [
        AdaptiveRoute<void>(page: HomeBodyPage),
        AdaptiveRoute<void>(page: HistoryProviderPage, maintainState: false),
        AdaptiveRoute<void>(page: NotificationPage),
        AdaptiveRoute<void>(
          page: AccountPage,
        ),
      ],
      maintainState: false,
    ),
    AdaptiveRoute<void>(page: HistoryDetailPage),
    AdaptiveRoute<void>(page: HistoryProviderDetailPage),
    AdaptiveRoute<void>(page: PaymentPage),
    AdaptiveRoute<void>(page: TestPage),
    AdaptiveRoute<void>(page: UpdateProfilePage),
    AdaptiveRoute<void>(page: LoginPage),
    AdaptiveRoute<void>(page: OnboardingPage),
    AdaptiveRoute<void>(page: OTPPage),
    AdaptiveRoute<void>(page: SignupPage),
    AdaptiveRoute<void>(page: ChooseServicePage, maintainState: false),
    AdaptiveRoute<OptionalService?>(page: NewServiceRequestPage),
    AdaptiveRoute<void>(page: ServiceDetailPage),
    AdaptiveRoute<void>(page: ChooseProductPage),
    AdaptiveRoute<void>(page: FindNearbyPage),
    AdaptiveRoute<void>(page: RequestProviderPage),
    AdaptiveRoute<void>(page: ListRepairerPage),
    AdaptiveRoute<void>(page: RepairerProfilePage),
    AdaptiveRoute<void>(page: AddMessagePage),
    AdaptiveRoute<void>(page: OverViewOrderPage, maintainState: false),
    AdaptiveRoute<void>(page: FAQsPage),
    AdaptiveRoute<void>(page: FAQsItemOTPPage),
    AdaptiveRoute<void>(page: AboutUsPage),
    AdaptiveRoute<void>(page: TermsPrivacyPage),
    AdaptiveRoute<void>(page: LoginEnterPhonePage),
    AdaptiveRoute<void>(page: PermissionPage),
    AdaptiveRoute<void>(page: AddReportPage),
  ],
)
class $AppRouter {}
