// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:new_app/view/widget/custom_drower/first_layer.dart';
import 'package:new_app/view/widget/custom_drower/home_page.dart';
import 'package:new_app/view/widget/custom_drower/secound_layer.dart';
import 'package:new_app/view/widget/custom_drower/third_layer.dart';

class CustomDraw extends StatelessWidget {
  const CustomDraw({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            const FirstLayer(),
            SecondLayer(),
            const ThierdPage(),
            const HomePage(),
          ],
        ),
      ),
    );
  }
}
