import 'package:app_cade_rastreio/themes/alerts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCtrl extends GetxController with GetSingleTickerProviderStateMixin {
  final List<Tab> myTabs = const <Tab>[
    Tab(text: 'Pendentes'),
    Tab(text: 'À Caminho'),
    Tab(text: 'Entregues'),
  ];

  late TabController tabCtrl =
      TabController(vsync: this, length: myTabs.length);

  @override
  void onClose() {
    tabCtrl.dispose();

    super.onClose();
  }

  void search() {
    MyToast.success('aqui vai buscar', '');
  }

  void filter() {
    MyToast.success('aqui vai filtrar', '');
  }
}
