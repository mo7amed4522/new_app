// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/login_screen_controller/login_screen_controller.dart';
import 'package:new_app/core/constants/app_photo.dart';
import 'package:new_app/view/widget/login_widget/auth_card.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<LoginScreenControllerIPM>(
        init: LoginScreenControllerIPM(),
        builder: (controller) => Stack(
          children: [
            SingleChildScrollView(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                child: Image.asset(
                  AppPhotoLink.loginBG,
                  height: Get.height,
                  width: Get.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: Get.height,
              width: Get.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: Get.height / 9),
                    Image.asset(
                      AppPhotoLink.themeLabelWhite,
                      color: const Color.fromARGB(255, 3, 2, 2),
                      // height: 70,
                      width: 176,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 23),
                    const Text(
                      "LOG IN TO CONTINUE",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 12,
                        // fontFamily: FontRes.bold,
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(height: Get.height / 13),
                    AuthCard(
                      emailController: TextEditingController(),
                      emailFocus: FocusNode(),
                      emailError: '',
                      onContinueTap: controller.onLoginTap,
                      onGoogleTap: () {},
                      onAppleTap: () {},
                      onSignUpTap: controller.onRegisterTap,
                      onForgotPwdTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
