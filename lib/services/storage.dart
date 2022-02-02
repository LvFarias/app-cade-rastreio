import 'package:get/get.dart';
import 'package:localstorage/localstorage.dart';

class StorageService extends GetxService {
  final storage = LocalStorage('cade_app_data');

  void setItem(String key, String value) {
    storage.setItem(key, value);
  }

  String getItem(String key) {
    return storage.getItem(key) ?? '';
  }

  void deleteItem(String key) {
    storage.deleteItem(key);
  }

  void clear() {
    storage.clear();
  }
}
