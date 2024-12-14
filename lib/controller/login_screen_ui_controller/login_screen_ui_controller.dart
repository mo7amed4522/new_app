import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:new_app/view/widget/login_screen_ui_widget/components_screen_ui_widget/login_content.dart';
import 'package:new_app/view/widget/login_screen_ui_widget/helper_ui.dart';
import 'package:new_app/view/widget/login_screen_ui_widget/login_screen_ui_animation/login_screen_ui_animation.dart';

abstract class LoginScreenUiController extends GetxController {}

class LoginScreenUiControllerIMP extends LoginScreenUiController
    with GetTickerProviderStateMixin {
  late final List<Widget> createAccountContent;
  late final List<Widget> loginContent;

  @override
  void onInit() {
    createAccountContent = [
      inputField('Name', Ionicons.person_outline),
      inputField('Email', Ionicons.mail_outline),
      inputField('Password', Ionicons.lock_closed_outline),
      loginButton('Sign Up'),
      orDivider(),
      logos(),
    ];
    loginContent = [
      inputField('Email', Ionicons.mail_outline),
      inputField('Password', Ionicons.lock_closed_outline),
      loginButton('Log In'),
      forgotPassword(),
    ];
    ChangeScreenAnimation.initialize(
      vsync: this,
      createAccountItems: createAccountContent.length,
      loginItems: loginContent.length,
    );
    for (var i = 0; i < createAccountContent.length; i++) {
      createAccountContent[i] = HelperFunctions.wrapWithAnimatedBuilder(
        animation: ChangeScreenAnimation.createAccountAnimations[i],
        child: createAccountContent[i],
      );
    }

    for (var i = 0; i < loginContent.length; i++) {
      loginContent[i] = HelperFunctions.wrapWithAnimatedBuilder(
        animation: ChangeScreenAnimation.loginAnimations[i],
        child: loginContent[i],
      );
    }
    super.onInit();
  }

  @override
  void dispose() {
    ChangeScreenAnimation.dispose();
    super.dispose();
  }
}
