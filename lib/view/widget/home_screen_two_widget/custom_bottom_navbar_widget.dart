// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/controller/home_screen_two_controller/home_screen_two_contaroller.dart';

class CustomBottomNavBarWidget extends StatelessWidget {
  const CustomBottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4, bottom: 18, right: 4),
      height: 45,
      decoration: BoxDecoration(
        color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        boxShadow: [
          BoxShadow(blurRadius: 30, offset: const Offset(0, 10)),
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      child: GetBuilder<HomeScreenTwoControllerIMP>(
        init: HomeScreenTwoControllerIMP(),
        builder: (controller) => ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              controller.changeIndex(index);
            },
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == controller.currentIndex
                      ? MediaQuery.of(context).size.width * .35
                      : MediaQuery.of(context).size.width * .21,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == controller.currentIndex
                        ? MediaQuery.of(context).size.width * .2
                        : 0,
                    width: index == controller.currentIndex
                        ? MediaQuery.of(context).size.width * .33
                        : 0,
                    decoration: BoxDecoration(
                      color: index == controller.currentIndex
                          ? Theme.of(context).primaryColor
                          : Theme.of(context)
                              .bottomNavigationBarTheme
                              .unselectedItemColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  //width: index == controller.currentIndex ? MediaQuery.of(context).size.width * .12 : MediaQuery.of(context).size.width * .15,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == controller.currentIndex
                                ? MediaQuery.of(context).size.width * .18
                                : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == controller.currentIndex ? 1 : 0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                                index == controller.currentIndex
                                    ? controller.listOfName[index]
                                    : '',
                                style: GoogleFonts.aDLaMDisplay(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(color: Colors.red),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == controller.currentIndex
                                ? MediaQuery.of(context).size.width * .06
                                : 20,
                          ),
                          SvgPicture.asset(
                            controller.listOfIcons[index],
                            width: MediaQuery.of(context).size.width * .076,
                            color: index == controller.currentIndex
                                ? Theme.of(context)
                                    .bottomNavigationBarTheme
                                    .selectedIconTheme!
                                    .color
                                : Theme.of(context)
                                    .bottomNavigationBarTheme
                                    .unselectedIconTheme!
                                    .color,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
