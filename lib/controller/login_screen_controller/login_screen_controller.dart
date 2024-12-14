import 'package:get/get.dart';
import 'package:new_app/core/routes/app_route.dart';

abstract class LoginScreenController extends GetxController {
  void onLoginTap();
  void onRegisterTap();
  void goBackTap();
}

class LoginScreenControllerIPM extends LoginScreenController {
  @override
  void onLoginTap() {
    Get.toNamed(AppRouter.loginPwd);
  }

  @override
  void onRegisterTap() {
    Get.toNamed(AppRouter.registerScreen);
  }

  @override
  void goBackTap() {
    Get.back();
  }
}
