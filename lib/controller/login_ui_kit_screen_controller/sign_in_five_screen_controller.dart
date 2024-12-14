import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignInFiveScreenController extends GetxController {}

class SignInFiveScreenControllerIMP extends SignInFiveScreenController {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
