import 'package:app_cade_rastreio/pages/login/ctrl.dart';
import 'package:app_cade_rastreio/services/storage.dart';
import 'package:app_cade_rastreio/services/user.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginCtrl>(() => LoginCtrl());
    Get.lazyPut<UserService>(() => UserService());
    Get.lazyPut<StorageService>(() => StorageService());
  }
}
