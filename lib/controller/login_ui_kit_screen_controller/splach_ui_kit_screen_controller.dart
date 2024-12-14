import 'dart:async';

import 'package:get/get.dart';
import 'package:new_app/core/routes/app_route.dart';

abstract class SplachUiKitScreenController extends GetxController {}

class SplachUiKitScreenControllerIMP extends SplachUiKitScreenController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 3), () async {
      Get.toNamed(AppRouter.mainScreen);
    });
    super.onInit();
  }
}
