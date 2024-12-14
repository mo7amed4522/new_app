import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/login_ui_kit_screen_controller/sign_in_ten_screen_controller.dart';
import 'package:new_app/view/widget/login_ui_kit_widget/sign_in_ten_widget/sign_in_ten_widget.dart';

class SignInTenScreen extends StatelessWidget {
  const SignInTenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF8F8F8),
      body: GetBuilder<SignInTenScreenControllerIMP>(
        init: SignInTenScreenControllerIMP(),
        builder: (controller) => SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildCard(size, controller.emailController,
                    controller.passwordController),
                buildFooter(size),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
