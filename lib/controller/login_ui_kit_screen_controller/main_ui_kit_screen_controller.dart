import 'package:get/get.dart';
import 'package:new_app/core/routes/app_route.dart';

abstract class MainUiKitScreenController extends GetxController {
  void goToOneScreen();
  void goToTwoScreen();
  void goToThreeScreen();
  void goToFourScreen();
  void goToFiveScreen();
  void goToSixScreen();
  void goToSevenScreen();
  void goToEightScreen();
  void goToNineScreen();
  void goToTenScreen();
}

class MainUiKitScreenControllerIMP extends MainUiKitScreenController {
  @override
  void goToEightScreen() {
    Get.toNamed(AppRouter.signInEight);
  }

  @override
  void goToFiveScreen() {
    Get.toNamed(AppRouter.signInFive);
  }

  @override
  void goToFourScreen() {
    Get.toNamed(AppRouter.signInFour);
  }

  @override
  void goToNineScreen() {
    Get.toNamed(AppRouter.signInNine);
  }

  @override
  void goToOneScreen() {
    Get.toNamed(AppRouter.signInOne);
  }

  @override
  void goToSevenScreen() {
    Get.toNamed(AppRouter.signInSeven);
  }

  @override
  void goToSixScreen() {
    Get.toNamed(AppRouter.signInSix);
  }

  @override
  void goToTenScreen() {
    Get.toNamed(AppRouter.signInTen);
  }

  @override
  void goToThreeScreen() {
    Get.toNamed(AppRouter.signInThree);
  }

  @override
  void goToTwoScreen() {
    Get.toNamed(AppRouter.signInTwo);
  }
}
