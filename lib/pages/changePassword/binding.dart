import 'package:app_cade_rastreio/pages/changePassword/ctrl.dart';
import 'package:app_cade_rastreio/services/storage.dart';
import 'package:app_cade_rastreio/services/user.dart';
import 'package:get/get.dart';

class ChangePasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangePasswordCtrl>(() => ChangePasswordCtrl());
    Get.lazyPut<UserService>(() => UserService());
    Get.lazyPut<StorageService>(() => StorageService());
  }
}
