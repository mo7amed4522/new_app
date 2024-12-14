import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/login_screen_ui_controller/login_screen_ui_controller.dart';
import 'package:new_app/core/constants/app_photo.dart';
import 'package:new_app/view/widget/login_screen_ui_widget/components_screen_ui_widget/bottom_text.dart';
import 'package:new_app/view/widget/login_screen_ui_widget/components_screen_ui_widget/top_text.dart';

enum Screens {
  createAccount,
  welcomeBack,
}

Widget inputField(String hint, IconData iconData) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
    child: SizedBox(
      height: 50,
      child: Material(
        elevation: 8,
        shadowColor: Colors.black87,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        child: TextField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: hint,
            prefixIcon: Icon(iconData),
          ),
        ),
      ),
    ),
  );
}

Widget loginButton(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 16),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 14),
        backgroundColor: const Color(0xFF265DAB),
        shape: const StadiumBorder(),
        elevation: 8,
        shadowColor: Colors.black87,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget orDivider() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 8),
    child: Row(
      children: [
        Flexible(
          child: Container(
            height: 1,
            color: const Color(0xFF2D5D70),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'or',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Flexible(
          child: Container(
            height: 1,
            color: const Color(0xFF2D5D70),
          ),
        ),
      ],
    ),
  );
}

Widget logos() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppPhotoLink.apple_logo),
        const SizedBox(width: 24),
        SvgPicture.asset(AppPhotoLink.google_logo),
      ],
    ),
  );
}

Widget forgotPassword() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 110),
    child: TextButton(
      onPressed: () {},
      child: const Text(
        'Forgot Password?',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0xFF265DAB),
        ),
      ),
    ),
  );
}

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginScreenUiControllerIMP>(
      init: LoginScreenUiControllerIMP(),
      builder: (controller) => Stack(
        children: [
          const Positioned(
            top: 136,
            left: 24,
            child: TopText(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: controller.createAccountContent,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: controller.loginContent,
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: BottomText(),
            ),
          ),
        ],
      ),
    );
  }
}
