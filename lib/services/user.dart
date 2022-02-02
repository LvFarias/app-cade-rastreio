import 'dart:convert';

import 'package:app_cade_rastreio/models/user.dart';
import 'package:app_cade_rastreio/routes/routes.dart';
import 'package:app_cade_rastreio/services/api.dart';
import 'package:app_cade_rastreio/services/storage.dart';
import 'package:app_cade_rastreio/themes/alerts.dart';
import 'package:get/get.dart';

class UserService extends GetxService {
  final storage = StorageService();
  final api = ApiService();

  User user = User('', '');

  bool isLogged() {
    getUserData();
    return user.id != '';
  }

  User getUserData() {
    String userStorage = storage.getItem('user');
    if (userStorage.isNotEmpty) {
      dynamic _user = jsonDecode(userStorage);
      user = User(_user.id, _user.name);
    }
    return user;
  }

  Future<User> login(String email, String password) async {
    await api.post('login', {'email': email, 'password': password});
    MyToast.success('success'.tr, 'loginSuccess'.tr);
    Get.toNamed(MyRoutes.home);
    return user;
  }

  void logout() {
    storage.clear();
    Get.toNamed(MyRoutes.login);
  }
}
