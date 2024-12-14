import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:new_app/core/constants/app_photo.dart';

class Loader {
  Future<void> lottieLoader() {
    return Future.delayed(const Duration(seconds: 0), () {
      showDialog(
          context: Get.context!,
          barrierDismissible: false,
          builder: (context) {
            return Center(
                child:
                    Lottie.asset(AppPhotoLink.load, height: 100, width: 100));
          },
          barrierLabel: '');
    });
  }

  Widget lottieWidget() {
    return Center(
      child: Lottie.asset(AppPhotoLink.load, height: 100, width: 100),
    );
  }
}
