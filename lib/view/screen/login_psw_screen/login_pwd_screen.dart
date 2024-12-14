// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/login_pwd_screen_controller/login_pwd_screen_controller.dart';
import 'package:new_app/core/constants/app_photo.dart';
import 'package:new_app/view/widget/login_psw_widget/password_card.dart';

class LoginPwdScreen extends StatelessWidget {
  const LoginPwdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<LoginPwdScreenControllerIMP>(
        init: LoginPwdScreenControllerIMP(),
        builder: (controller) => Stack(
          children: [
            SingleChildScrollView(
              child: Image.asset(
                AppPhotoLink.loginBG,
                height: Get.height,
                width: Get.width,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: Get.height,
              width: Get.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SafeArea(
                      child: InkWell(
                        onTap: controller.onBackTap,
                        child: Container(
                          margin: const EdgeInsets.only(left: 10, top: 5),
                          child: Image.asset(
                            AppPhotoLink.backArrow,
                            color: Color(0xFFFFFFFF),
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 9),
                    Center(
                      child: Image.asset(
                        AppPhotoLink.themeLabelWhite,
                        color: Colors.white,
                        // height: 77,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: Get.height / 18),
                    Row(
                      children: const [
                        SizedBox(width: 20),
                        Text(
                          "LOG IN",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 25,
                            // fontFamily: FontRes.extraBold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    PasswordCard(
                      pwdController: TextEditingController(),
                      pwdFocus: FocusNode(),
                      pwdError: '',
                      onForgotPwdTap: controller.onForgetPwdTap,
                      onContinueTap: controller.onContinueTap,
                      showPwd: true,
                      onViewBtnTap: () {},
                      email: '',
                      onChangeEmailTap: () {},
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
