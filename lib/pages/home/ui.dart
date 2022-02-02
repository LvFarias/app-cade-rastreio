import 'dart:html';

import 'package:app_cade_rastreio/pages/home/ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeCtrl> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadê?'),
        actions: [
          IconButton(
            onPressed: controller.search,
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: controller.filter,
            icon: const Icon(Icons.filter_list),
          ),
        ],
        bottom: TabBar(
          controller: controller.tabCtrl,
          tabs: controller.myTabs,
        ),
      ),
      body: TabBarView(
        controller: controller.tabCtrl,
        children: controller.myTabs.map((Tab tab) {
          final String label = tab.text!.toLowerCase();

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Lista de pedidos $label'),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
