import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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

Widget emailTextField(Size size) {
  return Container(
    alignment: Alignment.center,
    height: size.height / 11,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      border: Border.all(
        width: 1.0,
        color: const Color(0xFFEFEFEF),
      ),
    ),
    child: TextField(
      style: GoogleFonts.inter(
        fontSize: 16.0,
        color: const Color(0xFF15224F),
      ),
      maxLines: 1,
      cursorColor: const Color(0xFF15224F),
      decoration: InputDecoration(
          labelText: 'Email/ Phone number',
          labelStyle: GoogleFonts.inter(
            fontSize: 12.0,
            color: const Color(0xFF969AA8),
          ),
          border: InputBorder.none),
    ),
  );
}

Widget passwordTextField(Size size) {
  return Container(
    alignment: Alignment.center,
    height: size.height / 11,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      border: Border.all(
        width: 1.0,
        color: const Color(0xFFEFEFEF),
      ),
    ),
    child: TextField(
      style: GoogleFonts.inter(
        fontSize: 16.0,
        color: const Color(0xFF15224F),
      ),
      maxLines: 1,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      cursorColor: const Color(0xFF15224F),
      decoration: InputDecoration(
          labelText: 'Password',
          labelStyle: GoogleFonts.inter(
            fontSize: 12.0,
            color: const Color(0xFF969AA8),
          ),
          border: InputBorder.none),
    ),
  );
}

Widget signInButton(Size size) {
  return Container(
    alignment: Alignment.center,
    height: size.height / 11,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50.0),
      color: const Color(0xFF21899C),
      boxShadow: [
        BoxShadow(
          color: const Color(0xFF4C2E84).withOpacity(0.2),
          offset: const Offset(0, 15.0),
          blurRadius: 60.0,
        ),
      ],
    ),
    child: Text(
      'Sign in',
      style: GoogleFonts.inter(
        fontSize: 16.0,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        height: 1.5,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

Widget signInWithText() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Expanded(child: Divider()),
      const SizedBox(
        width: 16,
      ),
      Text(
        'Or Sign in with',
        style: GoogleFonts.inter(
          fontSize: 12.0,
          color: const Color(0xFF969AA8),
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        width: 16,
      ),
      const Expanded(child: Divider()),
    ],
  );
}

//sign up text here
Widget footerText() {
  return Text.rich(
    TextSpan(
      style: GoogleFonts.inter(
        fontSize: 12.0,
        color: const Color(0xFF3B4C68),
      ),
      children: const [
        TextSpan(
          text: 'Don’t have an account ?',
        ),
        TextSpan(
          text: ' ',
          style: TextStyle(
            color: Color(0xFF21899C),
          ),
        ),
        TextSpan(
          text: 'Sign up',
          style: TextStyle(
            color: Color(0xFF21899C),
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
  );
}
