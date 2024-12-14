import 'package:get/get.dart';
import 'package:new_app/core/routes/app_route.dart';

abstract class WelcomRedScreenController extends GetxController {
  void goToLoginRedScreen();
  void goToRegisterScreen();
}

class WelcomRedScreenControllerIMP extends WelcomRedScreenController {
  @override
  void goToLoginRedScreen() {
    Get.toNamed(AppRouter.loginRedScreen);
  }

  @override
  void goToRegisterScreen() {
    Get.toNamed(AppRouter.registerRedScreen);
  }
}
