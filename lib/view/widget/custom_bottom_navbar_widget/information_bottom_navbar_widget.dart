import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/core/constants/app_photo.dart';

class InformationBottomNavbarWidget extends StatelessWidget {
  const InformationBottomNavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Image.asset(
            AppPhotoLink.loginBG,
            height: Get.height,
            width: Get.width,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
