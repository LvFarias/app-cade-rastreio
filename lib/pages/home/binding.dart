import 'package:app_cade_rastreio/pages/home/ctrl.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeCtrl>(() => HomeCtrl());
  }
}
