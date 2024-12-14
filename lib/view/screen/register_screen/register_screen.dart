// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/register_screen_contoller/register_screen_controller.dart';
import 'package:new_app/core/constants/app_photo.dart';
import 'package:new_app/view/widget/register_screen_widget/register_card_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<RegisterScreenContollerIPM>(
        init: RegisterScreenContollerIPM(),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      AppPhotoLink.backArrow,
                      width: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: Get.height,
                    width: Get.width,
                    child: SingleChildScrollView(
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      child: Column(
                        children: [
                          Image.asset(
                            AppPhotoLink.themeLabelWhite,
                            width: 176,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: Get.height / 18),
                          Row(
                            children: [
                              SizedBox(width: 20),
                              Text(
                                'Register',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  // fontFamily: FontRes.extraBold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          RegisterCard(
                            conroller: controller,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
