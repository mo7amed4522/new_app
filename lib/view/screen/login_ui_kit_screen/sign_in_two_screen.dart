import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/login_ui_kit_screen_controller/sign_in_two_screen_controller.dart';
import 'package:new_app/view/widget/login_ui_kit_widget/sign_in_two_widget/sign_in_two_widget.dart';

class SignInTwoScreen extends StatelessWidget {
  const SignInTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF21899C),
      body: GetBuilder<SignInTwoScreenControllerIMP>(
        init: SignInTwoScreenControllerIMP(),
        builder: (controller) => SafeArea(
          child: Column(
            children: [
              //to give space from top
              const Expanded(
                flex: 1,
                child: Center(),
              ),

              //page content here
              Expanded(
                flex: 9,
                child: buildCard(size),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
