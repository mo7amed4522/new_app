import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/core/constants/app_photo.dart';

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
