import 'package:get/get.dart';
import 'package:new_app/core/routes/app_route.dart';

class GetStartScreenController extends GetxController {}

class GetStartScreeenControllerIPM extends GetStartScreenController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3), () async {
      Get.toNamed(AppRouter.startLoginPage);
    });
    super.onInit();
  }
}
