import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/login_ui_kit_screen_controller/sign_in_siven_screen_controller.dart';
import 'package:new_app/view/widget/login_ui_kit_widget/sign_in_siven_widget/sign_in_seven_widget.dart';

class SignInSevenScreen extends StatelessWidget {
  const SignInSevenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF21899C),
      body: GetBuilder<SignInSivenScreenControllerIMP>(
        init: SignInSivenScreenControllerIMP(),
        builder: (controller) => SafeArea(
          child: Column(
            children: [
              //give some space from top
              const Expanded(
                flex: 1,
                child: Center(),
              ),

              //page content here
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
