import 'package:app_cade_rastreio/pages/forgotPassword/ctrl.dart';
import 'package:app_cade_rastreio/services/storage.dart';
import 'package:app_cade_rastreio/services/user.dart';
import 'package:get/get.dart';

class ForgotPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordCtrl>(() => ForgotPasswordCtrl());
    Get.lazyPut<UserService>(() => UserService());
    Get.lazyPut<StorageService>(() => StorageService());
  }
}
