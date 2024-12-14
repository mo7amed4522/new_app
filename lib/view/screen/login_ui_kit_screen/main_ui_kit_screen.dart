import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/controller/login_ui_kit_screen_controller/main_ui_kit_screen_controller.dart';
import 'package:new_app/core/constants/app_photo.dart';

class MainUiKitScreen extends StatelessWidget {
  const MainUiKitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<MainUiKitScreenControllerIMP>(
        init: MainUiKitScreenControllerIMP(),
        builder: (controller) => Padding(
          padding: const EdgeInsets.all(16.0),
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context)
                .copyWith(scrollbars: false), //to hide scrollbar
            child: ListView(
              children: [
                logo(100, 100),
                const SizedBox(
                  height: 16,
                ),
                richText(18),
                buildButton('Design 1', context, controller.goToOneScreen),
                buildButton('Design 2', context, controller.goToTwoScreen),
                buildButton('Design 3', context, controller.goToThreeScreen),
                buildButton('Design 4', context, controller.goToFourScreen),
                buildButton('Design 5', context, controller.goToFiveScreen),
                buildButton('Design 6', context, controller.goToSixScreen),
                buildButton('Design 7', context, controller.goToSevenScreen),
                buildButton('Design 8', context, controller.goToEightScreen),
                buildButton('Design 9', context, controller.goToNineScreen),
                buildButton('Design 10', context, controller.goToTenScreen),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget logo(double height_, double width_) {
  return SvgPicture.asset(
    AppPhotoLink.logoSvg,
    height: height_,
    width: width_,
  );
}

Widget richText(double fontSize) {
  return Text.rich(
    TextSpan(
      style: GoogleFonts.inter(
        fontSize: fontSize,
        color: const Color(0xFF21899C),
        letterSpacing: 3,
        height: 1.03,
      ),
      children: const [
        TextSpan(
          text: 'LOGIN ',
          style: TextStyle(
            fontWeight: FontWeight.w800,
          ),
        ),
        TextSpan(
          text: 'PAGES \nUI ',
          style: TextStyle(
            color: Color(0xFFFE9879),
            fontWeight: FontWeight.w800,
          ),
        ),
        TextSpan(
          text: 'KIT',
          style: TextStyle(
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    ),
    textAlign: TextAlign.center,
  );
}

Widget buildButton(String txt, BuildContext context, VoidCallback onTap) {
  final size = MediaQuery.of(context).size;
  return Padding(
    padding: const EdgeInsets.only(top: 12.0),
    child: InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: size.height / 12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            width: 1.0,
            color: const Color(0xFF21899C),
          ),
        ),
        child: Text(
          txt,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 16.0,
            color: const Color(0xFF21899C),
            fontWeight: FontWeight.w500,
            height: 1.5,
          ),
        ),
      ),
    ),
  );
}
