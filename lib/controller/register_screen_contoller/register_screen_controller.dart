import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class RegisterScreenController extends GetxController {
  void onviewTap();
}

class RegisterScreenContollerIPM extends RegisterScreenController {
  late TextEditingController fullNameController;
  late TextEditingController emailController;
  late TextEditingController pwdController;
  late TextEditingController confirmPwdController;
  late TextEditingController ageController;

  FocusNode fullNameFocus = FocusNode();
  FocusNode emailFocus = FocusNode();
  FocusNode pwdFocus = FocusNode();
  FocusNode confirmPwdFocus = FocusNode();
  FocusNode ageFocus = FocusNode();

  String fullNameError = '';
  String emailError = '';
  String pwdError = '';
  String confirmPwdError = '';
  String ageError = '';

  bool showPwd = false;

  @override
  void onInit() {
    emailController = TextEditingController();
    fullNameController = TextEditingController();
    pwdController = TextEditingController();
    confirmPwdController = TextEditingController();
    ageController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    fullNameController.dispose();
    pwdController.dispose();
    confirmPwdController.dispose();
    ageController.dispose();
    super.dispose();
  }

  @override
  void onviewTap() {
    showPwd = !showPwd;
    update();
  }
}
