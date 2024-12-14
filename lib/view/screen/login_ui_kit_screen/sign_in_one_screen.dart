import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/login_ui_kit_screen_controller/sign_in_one_screen_controller.dart';
import 'package:new_app/core/constants/app_photo.dart';
import 'package:new_app/view/widget/login_ui_kit_widget/sign_in_one_widget/sign_in_one_widget.dart';
import 'package:new_app/view/widget/login_ui_kit_widget/social_button.dart';

class SignInOneScreen extends StatelessWidget {
  const SignInOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GetBuilder<SignInOneScreenControllerIMP>(
        init: SignInOneScreenControllerIMP(),
        builder: (controller) => SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //logo section
                  logo(size.height / 8, size.height / 8),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  richText(24),
                  SizedBox(
                    height: size.height * 0.03,
                  ),

                  //email & password section
                  emailTextField(size),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  passwordTextField(size),
                  SizedBox(
                    height: size.height * 0.03,
                  ),

                  //sign in button & sign in with text
                  signInButton(size),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  signInWithText(),
                  SizedBox(
                    height: size.height * 0.02,
                  ),

                  //sign in with google & apple
                  // signInGoogleButton(size),
                  SignInOneSocialButton(
                    iconPath: AppPhotoLink.apple_logo,
                    text: 'Sign in with Apple',
                    size: MediaQuery.of(context).size,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  SignInOneSocialButton(
                    iconPath: AppPhotoLink.google_logo,
                    text: 'Sign in with Google',
                    size: MediaQuery.of(context).size,
                  ),
                  // signInAppleButton(size),
                  SizedBox(
                    height: size.height * 0.03,
                  ),

                  //sign up text here
                  Center(
                    child: footerText(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
