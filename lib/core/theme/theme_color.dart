// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:new_app/core/constants/constant.dart';

class AppColor {
  static ThemeData customDarkThem = ThemeData.dark().copyWith(
    primaryColor: Color(0xFFF7F5F5),
    colorScheme: ColorScheme(
      primary: Color(0xff5DB1DF),
      background: Color(0XFF212845),
      secondary: Color(0xFFFE270D),
      surface: Color(0XFFF8D320),
      onSurface: Colors.green,
      tertiary: Color(0xffE0E0E0),
      onTertiary: Color(0xFFEEEEEE),
      tertiaryContainer: Colors.grey,
      brightness: Brightness.light,
      onError: Colors.red,
      surfaceVariant: Color(0xFF444444),
      onSurfaceVariant: Color(0xFF5F5F5F),
      onBackground: Colors.white,
      onPrimary: Colors.grey[400]!,
      onSecondary: Colors.white,
      error: Colors.grey.shade900,
      inversePrimary: Color(0xFFFF6F43),
      onInverseSurface: Color(0xFFFE1B03),
    ),
    tabBarTheme: TabBarTheme(
        unselectedLabelStyle:
            TextStyle(fontSize: 17, fontFamily: Contstant.haightlightAR),
        labelStyle:
            TextStyle(fontSize: 17, fontFamily: Contstant.haightlightAR),
        indicatorColor: Color(0xFFFE270D),
        labelColor: Color(0xFFFE270D),
        unselectedLabelColor: Colors.white,
        dividerColor: Colors.grey),
    cardTheme: CardTheme(color: Color(0xFF434343)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedIconTheme: IconThemeData(color: Color(0xFFFE270D)),
      unselectedIconTheme: IconThemeData(color: Colors.white),
      selectedItemColor: Color(0xFFFE270D),
      unselectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(
          fontFamily: Contstant.haightlightEng,
          fontSize: 10,
          color: Color(0xFFFE270D)),
      unselectedLabelStyle:
          TextStyle(fontFamily: Contstant.haightlightEng, fontSize: 10),
    ),
    textTheme: TextTheme(
      headlineMedium: TextStyle(
          fontSize: 14,
          color: Color(0xFFFE270D),
          fontWeight: FontWeight.w500,
          fontFamily: Contstant.haightlightEng),
      bodyLarge: TextStyle(
          fontSize: 17,
          fontFamily: Contstant.haightlightAR,
          color: Colors.white),
      bodyMedium: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontFamily: Contstant.haightlightEng),
      displayLarge: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontFamily: Contstant.haightlightEng),
      displayMedium: TextStyle(
          fontSize: 8,
          color: Colors.white,
          fontWeight: FontWeight.w200,
          fontFamily: Contstant.bodyEng),
      labelLarge: TextStyle(
          fontSize: 15,
          fontFamily: Contstant.bodyEng,
          color: Color(0xFFFE270D)),
      labelMedium: TextStyle(
          fontSize: 17,
          fontFamily: Contstant.bodyEng,
          color: Color(0xFFFE270D)),
      labelSmall: TextStyle(
          fontSize: 9,
          fontFamily: Contstant.haightlightEng,
          color: Color(0xFFFE270D)),
      displaySmall: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontFamily: Contstant.haightlightEng),
      bodySmall: TextStyle(
          fontSize: 9,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontFamily: Contstant.haightlightEng),
    ),
  );
  static ThemeData customLightThem = ThemeData.light().copyWith(
    primaryColor: Color(0xFF100F0F),
    cardTheme: CardTheme(color: Colors.grey[400]),
    colorScheme: ColorScheme(
      primary: Color(0xff5DB1DF),
      background: Color(0XFF212845),
      secondary: Color(0xFFFE270D),
      surface: Color(0XFFF8D320),
      onSurface: Colors.green,
      brightness: Brightness.light,
      tertiaryContainer: Colors.grey,
      onError: Colors.red,
      tertiary: Color(0xffE0E0E0),
      onTertiary: Color(0xFFEEEEEE),
      surfaceVariant: Color(0xFF444444),
      onSurfaceVariant: Color(0xFF5F5F5F),
      onBackground: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      error: Colors.grey,
      inversePrimary: Color(0xFFFF6F43),
      onInverseSurface: Color(0xFFFE1B03),
    ),
    tabBarTheme: TabBarTheme(
        unselectedLabelStyle:
            TextStyle(fontSize: 17, fontFamily: Contstant.haightlightAR),
        labelStyle:
            TextStyle(fontSize: 17, fontFamily: Contstant.haightlightAR),
        indicatorColor: Color(0xFFFE270D),
        labelColor: Color(0xFFFE270D),
        unselectedLabelColor: Colors.black,
        dividerColor: Colors.grey),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedIconTheme: IconThemeData(color: Color(0xFFFE270D)),
      unselectedIconTheme: IconThemeData(color: Colors.black),
      selectedItemColor: Color(0xFFFE270D),
      unselectedItemColor: Colors.black,
      selectedLabelStyle: TextStyle(
          fontFamily: Contstant.haightlightEng,
          fontSize: 10,
          color: Color(0xFFFE270D)),
      unselectedLabelStyle:
          TextStyle(fontFamily: Contstant.haightlightEng, fontSize: 10),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          fontSize: 17,
          fontFamily: Contstant.haightlightAR,
          color: Colors.black),
      headlineMedium: TextStyle(
          fontSize: 14,
          color: Color(0xFFFE270D),
          fontWeight: FontWeight.w500,
          fontFamily: Contstant.haightlightEng),
      bodyMedium: TextStyle(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontFamily: Contstant.haightlightEng),
      displayLarge: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontFamily: Contstant.haightlightEng),
      displayMedium: TextStyle(
          fontSize: 8,
          color: Colors.black,
          fontWeight: FontWeight.w200,
          fontFamily: Contstant.bodyEng),
      labelLarge: TextStyle(
          fontSize: 15,
          fontFamily: Contstant.bodyEng,
          color: Color(0xFFFE270D)),
      labelMedium: TextStyle(
          fontSize: 17,
          fontFamily: Contstant.bodyEng,
          color: Color(0xFFFE270D)),
      labelSmall: TextStyle(
          fontSize: 9,
          fontFamily: Contstant.haightlightEng,
          color: Color(0xFFFE270D)),
      displaySmall: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontFamily: Contstant.haightlightEng),
      bodySmall: TextStyle(
          fontSize: 9,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontFamily: Contstant.haightlightEng),
    ),
  );
}
