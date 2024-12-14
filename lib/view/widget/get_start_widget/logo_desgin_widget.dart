import 'package:flutter/material.dart';
import 'package:new_app/core/constants/app_photo.dart';

class LogoDeginStartScreenWidget extends StatelessWidget {
  const LogoDeginStartScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        fit: BoxFit.fill,
        AppPhotoLink.themeLabelWhite,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
