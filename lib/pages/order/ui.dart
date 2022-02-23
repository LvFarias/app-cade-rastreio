import 'package:app_cade_rastreio/pages/order/ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderPage extends GetView<OrderCtrl> {
  final String status;
  const OrderPage(this.status, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Aqui vai a lista de pacotes filtrados por: $status'),
        ],
      ),
    );
  }
}
