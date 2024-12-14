import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/login_ui_kit_screen_controller/sign_in_eight_screen_controller.dart';
import 'package:new_app/view/widget/login_ui_kit_widget/sign_in_eight_widget/sign_in_eight_widget.dart';

class SignInEightScreen extends StatelessWidget {
  const SignInEightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: GetBuilder<SignInEightScreenControllerIMP>(
        init: SignInEightScreenControllerIMP(),
        builder: (controller) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: <Widget>[
                //welcome text here
                Expanded(
                  flex: 2,
                  child: welcomeText(),
                ),

                //logo and loginPage text here
                Expanded(
                  flex: 3,
                  child: Column(
                    children: <Widget>[
                      logo(size.height / 8, size.height / 8),
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      richText(20.42),
                    ],
                  ),
                ),

                //username , password textField and remember_forget text here
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      UserNameTextField(size, controller.usernameController),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      passwordTextField(size, controller.passwordController),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      rememberForgetText(),
                    ],
                  ),
                ),

                //sign in, create account button and have account text here
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      signInButton(size),
                      const Spacer(),
                      buildNoAccountText(),
                      const Spacer(),
                      buildCreateButton(size),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
