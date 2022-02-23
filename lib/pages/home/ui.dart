import 'package:app_cade_rastreio/models/package.dart';
import 'package:app_cade_rastreio/pages/home/ctrl.dart';
import 'package:app_cade_rastreio/pages/order/ui.dart';
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
          return ListView(
            children: controller.packages.map((Package package) {
              if (package.status != tab.text) return Container();
              return ListTile(
                title: Text(package.name),
              );
            }).toList(),
          );
        }).toList(),
      ),
    );
  }
}
