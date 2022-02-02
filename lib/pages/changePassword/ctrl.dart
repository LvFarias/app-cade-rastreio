import 'package:app_cade_rastreio/themes/alerts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordCtrl extends GetxController {
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();
  TextEditingController repasswordInput = TextEditingController();

  void sendNewPassword() {
    Get.back();
    MyToast.success('success'.tr, 'passwordChanged'.tr);
  }
}
