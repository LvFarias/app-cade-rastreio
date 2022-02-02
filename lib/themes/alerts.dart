import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyToast {
  MyToast._();

  static void error(String title, String message) {
    Get.snackbar(
      title,
      message,
      // colorText: themeService.colors.black,
      duration: const Duration(seconds: 5),
      icon: const Icon(Icons.do_not_disturb_alt),
      animationDuration: const Duration(milliseconds: 300),
      // backgroundColor: themeService.colors.error.withOpacity(0.5),
    );
  }

  static void warning(String title, String message) {
    Get.snackbar(
      title,
      message,
      // colorText: themeService.colors.black,
      duration: const Duration(seconds: 5),
      icon: const Icon(Icons.warning),
      animationDuration: const Duration(milliseconds: 300),
      // backgroundColor: themeService.colors.warning.withOpacity(0.5),
    );
  }

  static void info(String title, String message) {
    Get.snackbar(
      title,
      message,
      // colorText: themeService.colors.black,
      duration: const Duration(seconds: 5),
      icon: const Icon(Icons.info),
      animationDuration: const Duration(milliseconds: 300),
      // backgroundColor: themeService.colors.info.withOpacity(0.5),
    );
  }

  static void success(String title, String message) {
    Get.snackbar(
      title,
      message,
      // colorText: themeService.colors.black,
      duration: const Duration(seconds: 5),
      icon: const Icon(Icons.check_circle_outline),
      animationDuration: const Duration(milliseconds: 300),
      // backgroundColor: themeService.colors.success.withOpacity(0.5),
    );
  }
}
