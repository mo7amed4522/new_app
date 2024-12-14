// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/home_screen_two_controller/home_screen_two_contaroller.dart';
import 'package:new_app/view/widget/home_screen_two_widget/custom_bottom_navbar_widget.dart';

class HomeScreenTwo extends StatelessWidget {
  const HomeScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: GetBuilder<HomeScreenTwoControllerIMP>(
          init: HomeScreenTwoControllerIMP(),
          builder: (controller) => Stack(
            children: [
              controller.screen[controller.currentIndex],
              Align(
                alignment: Alignment.bottomCenter,
                child: const CustomBottomNavBarWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
