import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/login_screen_ui_controller/login_screen_ui_controller.dart';
import 'package:new_app/view/widget/login_screen_ui_widget/components_screen_ui_widget/center_widget/center_widget.dart';
import 'package:new_app/view/widget/login_screen_ui_widget/components_screen_ui_widget/login_content.dart';
import 'dart:math' as math;

class LoginScreenUi extends StatelessWidget {
  const LoginScreenUi({super.key});

  Widget topWidget(double screenWidth) {
    return Transform.rotate(
      angle: -35 * math.pi / 180,
      child: Container(
        width: 1.2 * screenWidth,
        height: 1.2 * screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
          gradient: const LinearGradient(
            begin: Alignment(-0.2, -0.8),
            end: Alignment.bottomCenter,
            colors: [
              Color(0x007CBFCF),
              Color(0xB316BFC4),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomWidget(double screenWidth) {
    return Container(
      width: 1.5 * screenWidth,
      height: 1.5 * screenWidth,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment(0.6, -1.1),
          end: Alignment(0.7, 0.8),
          colors: [
            Color(0xDB4BE8CC),
            Color(0x005CDBCF),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: GetBuilder<LoginScreenUiControllerIMP>(
        init: LoginScreenUiControllerIMP(),
        builder: (controller) => Stack(
          children: [
            Positioned(
              top: -160,
              left: -30,
              child: topWidget(screenSize.width),
            ),
            Positioned(
              bottom: -180,
              left: -40,
              child: bottomWidget(screenSize.width),
            ),
            CenterWidget(size: screenSize),
            const LoginContent(),
          ],
        ),
      ),
    );
  }
}
