// ignore_for_file: file_names

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class SignInThreeScreenController extends GetxController {}

class SignInThreeScreenControllerIMP extends SignInThreeScreenController {
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
