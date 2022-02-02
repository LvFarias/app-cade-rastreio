import 'package:app_cade_rastreio/pages/login/ctrl.dart';
import 'package:app_cade_rastreio/themes/buttons.dart';
import 'package:app_cade_rastreio/themes/form.dart';
import 'package:app_cade_rastreio/themes/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginCtrl> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.transparent,
                child: Image.asset(MyImages.logo),
              ),
            ),
            const SizedBox(height: 25.0),
            TextFormField(
              autofocus: false,
              controller: controller.emailInput,
              decoration: myInputDecoration(hintText: 'email'.tr),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              autofocus: false,
              obscureText: true,
              controller: controller.passwordInput,
              decoration: myInputDecoration(hintText: 'password'.tr),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: MyButton(
                text: 'login'.tr,
                onPressed: () => controller.login(),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 15.0),
            //   child: IconButton(
            //     icon: const Icon(Icons.g_translate),
            //     // text: 'loginFacebook'.tr,
            //     onPressed: () => controller.loginFacebook(),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 15.0),
            //   child: IconButton(
            //     icon: const Icon(Icons.g_translate),
            //     // text: 'loginGoogle'.tr,
            //     onPressed: () => controller.loginGoogle(),
            //   ),
            // ),
            TextButton(
              onPressed: () => controller.forgotPassword(),
              child: Text('forgotPassword?'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
