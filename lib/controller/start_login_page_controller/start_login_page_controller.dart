import 'package:get/get.dart';
import 'package:new_app/core/routes/app_route.dart';

abstract class StartLoginPageController extends GetxController {
  void goToLoginAnimated();
  void goToLoginOrange();
  void goToLoginShapes();
  void goToLoginScreenUI();
  void goToRedLogin();
  void goToRiveHome();
  void goToAdminDashboard();
  void goToLoginResponsive();
}

class StartLoginPageControllerIMP extends StartLoginPageController {
  @override
  void goToLoginAnimated() {
    Get.toNamed(AppRouter.loginScreenAnimated);
  }

  @override
  void goToLoginOrange() {
    Get.toNamed(AppRouter.login);
  }

  @override
  void goToLoginShapes() {
    Get.toNamed(AppRouter.splachScreen);
  }

  @override
  void goToLoginScreenUI() {
    Get.toNamed(AppRouter.loginScreenUI);
  }

  @override
  void goToRedLogin() {
    Get.toNamed(AppRouter.welcomRedScreen);
  }

  @override
  void goToRiveHome() {
    Get.toNamed(AppRouter.riveAppHome);
  }

  @override
  void goToAdminDashboard() {
    Get.toNamed(AppRouter.adminResponseDashbard);
  }

  @override
  void goToLoginResponsive() {
    Get.toNamed(AppRouter.loginResposiveScreen);
  }
}
