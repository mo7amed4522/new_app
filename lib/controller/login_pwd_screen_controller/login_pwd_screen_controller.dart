// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/core/routes/app_route.dart';
import 'package:new_app/view/widget/login_psw_widget/forget_password_card.dart';

abstract class LoginPwdScreenController extends GetxController {
  void onBackTap();
  void onForgetPwdTap();
  void onContinueTap();
}

class LoginPwdScreenControllerIMP extends LoginPwdScreenController {
  String email = '';
  late TextEditingController pwdController;
  FocusNode pwdFocus = FocusNode();
  String pwdError = "";
  bool showPwd = false;
  bool isVerified = false;
  FocusNode resetFocusNode = FocusNode();
  bool isResetBtnVisible = false;
  @override
  void onInit() {
    pwdController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    pwdController.dispose();
    super.dispose();
  }

  @override
  void onBackTap() {
    Get.back();
  }

  void resetBtnClick(TextEditingController _controller) {
    resetFocusNode.unfocus();
  }

  @override
  void onForgetPwdTap() {
    Get.bottomSheet(ForgotPassword(
      resetBtnClick: resetBtnClick,
      resetFocusNode: FocusNode(),
    ));
  }

  @override
  void onContinueTap() {
    Get.toNamed(AppRouter.homeScreenTwo);
  }
}
