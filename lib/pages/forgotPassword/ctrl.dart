import 'package:app_cade_rastreio/themes/alerts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordCtrl extends GetxController {
  TextEditingController emailInput = TextEditingController();

  void sendEmail() {
    Get.back();
    MyToast.success('success'.tr, 'emailSended'.tr);
  }
}
