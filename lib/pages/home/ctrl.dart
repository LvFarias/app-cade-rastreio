import 'package:app_cade_rastreio/models/package.dart';
import 'package:app_cade_rastreio/themes/alerts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCtrl extends GetxController with GetSingleTickerProviderStateMixin {
  final List<Tab> myTabs = const <Tab>[
    Tab(text: 'Pendentes'),
    Tab(text: 'À Caminho'),
    Tab(text: 'Entregues'),
  ];

  final List<Package> packages = <Package>[
    Package(1, 'item 1', 'Pendentes'),
    Package(1, 'item 2', 'Pendentes'),
    Package(1, 'item 3', 'À Caminho'),
    Package(1, 'item 4', 'Pendentes'),
    Package(1, 'item 5', 'Pendentes'),
    Package(1, 'item 6', 'Entregues'),
    Package(1, 'item 7', 'À Caminho'),
    Package(1, 'item 8', 'Entregues'),
    Package(1, 'item 9', 'Entregues'),
    Package(1, 'item 10', 'Pendentes'),
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
