import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/login_ui_kit_screen_controller/sign_in_four_screen_controller.dart';
import 'package:new_app/view/widget/login_ui_kit_widget/sign_in_four_widget/sign_in_four_widget.dart';

class SignInFourScreen extends StatelessWidget {
  const SignInFourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF21899C),
      body: GetBuilder<SignInFourScreenControllerIMP>(
        init: SignInFourScreenControllerIMP(),
        builder: (controller) => SafeArea(
          child: Column(
            children: [
              //to give space card from top
              const Expanded(
                flex: 1,
                child: Center(),
              ),

              //page content
              Expanded(
                flex: 11,
                child: buildCard(size, controller.emailController,
                    controller.passwordController),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
