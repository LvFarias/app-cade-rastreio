import 'package:app_cade_rastreio/routes/routes.dart';
import 'package:app_cade_rastreio/services/user.dart';
import 'package:app_cade_rastreio/themes/alerts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginCtrl extends GetxController {
  final UserService userService = Get.find();

  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();

  void login() {
    String email = emailInput.text;
    String password = passwordInput.text;

    if (GetUtils.isEmail(email) && password.isNotEmpty) {
      userService.login(email, password);
    } else {
      MyToast.error('error'.tr, 'invalidEmailOrPassword'.tr);
    }
  }

  void loginFacebook() {}

  void loginGoogle() {}

  void forgotPassword() {
    Get.toNamed(MyRoutes.forgotPassword);
  }
}
