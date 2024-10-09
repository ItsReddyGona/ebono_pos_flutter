
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:kpn_pos_application/navigation/page_routes.dart';
import 'package:kpn_pos_application/ui/home/home_page.dart';
import 'package:kpn_pos_application/ui/login_page.dart';
import 'package:kpn_pos_application/ui/payment_summary_page.dart';
import 'package:kpn_pos_application/vm/home_vm.dart';

List<GetPage> getPages(){
  return  [
    GetPage(
        name: PageRoutes.login,
        page: () => LoginPage()),
    GetPage(
        name: PageRoutes.home,
        page: () => HomePage(homeViewModel: HomeViewModel())),
    GetPage(
        name: PageRoutes.paymentSummary,
        page: () => PaymentSummaryScreen()),
  ];
}