// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/login_ui_kit_screen_controller/sign_in_three_screen_controller%20.dart';
import 'package:new_app/view/widget/login_ui_kit_widget/sign_in_three_widget/sign_in_three_widget.dart';

class SignInThreeScreen extends StatelessWidget {
  const SignInThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF21899C),
      resizeToAvoidBottomInset: false,
      body: GetBuilder<SignInThreeScreenControllerIMP>(
        init: SignInThreeScreenControllerIMP(),
        builder: (_controller) => SafeArea(
          child: SizedBox(
            height: size.height,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                //bg design, we use 3 svg img
                Positioned(
                  left: -26,
                  top: 51.0,
                  child: SvgPicture.string(
                    '<svg viewBox="-26.0 51.0 91.92 91.92" ><path transform="matrix(0.707107, -0.707107, 0.707107, 0.707107, -26.0, 96.96)" d="M 48.75 0 L 65 32.5 L 48.75 65 L 16.24999809265137 65 L 0 32.5 L 16.25000381469727 0 Z" fill="none" stroke="#ffffff" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.707107, -0.707107, 0.707107, 0.707107, -10.83, 105.24)" d="M 0 0 L 27.625 11.05000019073486 L 55.25 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.707107, -0.707107, 0.707107, 0.707107, 16.51, 93.51)" d="M 0 37.04999923706055 L 0 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                    width: 91.92,
                    height: 91.92,
                  ),
                ),
                Positioned(
                  right: 43.0,
                  top: -103,
                  child: SvgPicture.string(
                    '<svg viewBox="63.0 -103.0 268.27 268.27" ><path transform="matrix(0.5, -0.866025, 0.866025, 0.5, 63.0, 67.08)" d="M 147.2896423339844 0 L 196.3861999511719 98.19309997558594 L 147.2896423339844 196.3861999511719 L 49.09654235839844 196.3861999511719 L 0 98.19309234619141 L 49.09656143188477 0 Z" fill="none" stroke="#ffffff" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.5, -0.866025, 0.866025, 0.5, 113.73, 79.36)" d="M 0 0 L 83.46413421630859 33.38565444946289 L 166.9282684326172 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.5, -0.866025, 0.866025, 0.5, 184.38, 23.77)" d="M 0 111.9401321411133 L 0 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                    width: 268.27,
                    height: 268.27,
                  ),
                ),
                Positioned(
                  right: -19,
                  top: 31.0,
                  child: SvgPicture.string(
                    '<svg viewBox="329.0 31.0 65.0 65.0" ><path transform="translate(329.0, 31.0)" d="M 48.75 0 L 65 32.5 L 48.75 65 L 16.24999809265137 65 L 0 32.5 L 16.25000381469727 0 Z" fill="none" stroke="#ffffff" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(333.88, 47.58)" d="M 0 0 L 27.625 11.05000019073486 L 55.25 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(361.5, 58.63)" d="M 0 37.04999923706055 L 0 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                    width: 65.0,
                    height: 65.0,
                  ),
                ),

                //card and footer ui
                Positioned(
                  bottom: 20.0,
                  child: Column(
                    children: <Widget>[
                      buildCard(size, _controller.emailController,
                          _controller.passwordController),
                      buildFooter(size),
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
