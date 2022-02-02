import 'package:app_cade_rastreio/lang/translate.dart';
import 'package:app_cade_rastreio/routes/pages.dart';
import 'package:app_cade_rastreio/routes/routes.dart';
import 'package:app_cade_rastreio/services/storage.dart';
import 'package:app_cade_rastreio/services/user.dart';
import 'package:app_cade_rastreio/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

void main() {
  FlutterNativeSplash.removeAfter(initialization);
  runApp(const MyApp());
}

String initialRoute = MyRoutes.home;

void initialization(BuildContext context) async {
  Get.lazyPut<StorageService>(() => StorageService());
  final UserService userService = Get.put(UserService());
  if (!userService.isLogged()) {
    Get.toNamed(MyRoutes.login);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: MyTranslate(),
      // locale: ui.window.locale,
      locale: const Locale('pt', 'BR'),
      fallbackLocale: const Locale('pt', 'BR'),
      debugShowCheckedModeBanner: false,
      title: 'Cadê?',
      theme: myTheme(),
      darkTheme: myThemeDark(),
      themeMode: ThemeMode.system,
      getPages: MyPages.routes,
      initialRoute: initialRoute,
    );
  }
}
