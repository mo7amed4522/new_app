import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/login_red_screen_controller.dart/welcom_red_screen_controller.dart';
import 'package:new_app/core/constants/app_photo.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<WelcomRedScreenControllerIMP>(
        init: WelcomRedScreenControllerIMP(),
        builder: (controller) => Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xffB81736),
            Color(0xff281537),
          ])),
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.only(top: 200.0),
              child: Image(image: AssetImage(AppPhotoLink.logo_red)),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Welcome Back',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: controller.goToLoginRedScreen,
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: controller.goToRegisterScreen,
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            const Spacer(),
            const Text(
              'Login with Social Media',
              style: TextStyle(fontSize: 17, color: Colors.white),
            ), //
            const SizedBox(
              height: 12,
            ),
            const Image(image: AssetImage(AppPhotoLink.socail))
          ]),
        ),
      ),
    );
  }
}
