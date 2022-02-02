import 'package:app_cade_rastreio/pages/changePassword/ctrl.dart';
import 'package:app_cade_rastreio/themes/buttons.dart';
import 'package:app_cade_rastreio/themes/form.dart';
import 'package:app_cade_rastreio/themes/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordPage extends GetView<ChangePasswordCtrl> {
  const ChangePasswordPage({Key? key}) : super(key: key);

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
              controller: controller.passwordInput,
              decoration: myInputDecoration(hintText: 'password'.tr),
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              autofocus: false,
              controller: controller.repasswordInput,
              decoration: myInputDecoration(hintText: 'repassword'.tr),
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: MyButton(
                text: 'changePassword'.tr,
                onPressed: () => controller.sendNewPassword(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
