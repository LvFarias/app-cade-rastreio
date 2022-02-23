import 'package:app_cade_rastreio/pages/order/ctrl.dart';
import 'package:get/get.dart';

class OrderBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderCtrl>(() => OrderCtrl());
  }
}
