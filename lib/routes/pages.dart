import 'package:app_cade_rastreio/pages/changePassword/binding.dart';
import 'package:app_cade_rastreio/pages/changePassword/ui.dart';
import 'package:app_cade_rastreio/pages/forgotPassword/binding.dart';
import 'package:app_cade_rastreio/pages/forgotPassword/ui.dart';
import 'package:app_cade_rastreio/pages/home/binding.dart';
import 'package:app_cade_rastreio/pages/home/ui.dart';
import 'package:app_cade_rastreio/pages/login/binding.dart';
import 'package:app_cade_rastreio/pages/login/ui.dart';
import 'package:app_cade_rastreio/routes/routes.dart';
import 'package:get/get.dart';

class MyPages {
  static final routes = [
    GetPage(
      name: MyRoutes.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: MyRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: MyRoutes.forgotPassword,
      page: () => const ForgotPasswordPage(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: MyRoutes.changePassword,
      page: () => const ChangePasswordPage(),
      binding: ChangePasswordBinding(),
    ),
  ];
}
