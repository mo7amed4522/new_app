import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignInEightScreenController extends GetxController {}

class SignInEightScreenControllerIMP extends SignInEightScreenController {
  late TextEditingController usernameController;
  late TextEditingController passwordController;

  @override
  void onInit() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
