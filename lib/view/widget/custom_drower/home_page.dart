// ignore_for_file: file_names, unnecessary_new, prefer_const_constructors, unused_element, invalid_use_of_protected_member, library_private_types_in_public_api, unused_import
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matrix4_transform/matrix4_transform.dart';
import 'package:new_app/core/constants/app_photo.dart';
import 'package:new_app/view/screen/home_screen/home_screen.dart';
import 'package:new_app/view/widget/custom_drower/secound_layer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  double xoffSet = 0;
  double yoffSet = 0;
  double angle = 0;
  bool isOpen = false;
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4Transform()
          .translate(x: xoffSet, y: yoffSet)
          .rotate(angle)
          .matrix4,
      duration: Duration(milliseconds: 250),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).dialogBackgroundColor,
          borderRadius:
              isOpen ? BorderRadius.circular(10) : BorderRadius.circular(0),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Image.asset(
                  AppPhotoLink.loginBG,
                  height: Get.height,
                  width: Get.width,
                  fit: BoxFit.cover,
                ),
              ),
              !isOpen
                  ? Positioned(
                      top: 10,
                      left: 20,
                      child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(
                            () {
                              xoffSet = 150;
                              yoffSet = 80;
                              angle = -0.2;
                              isOpen = true;
                            },
                          );
                          secondLayerState!.setState(
                            () {
                              secondLayerState!.xoffSet = 122;
                              secondLayerState!.yoffSet = 110;
                              secondLayerState!.angle = -0.275;
                            },
                          );
                        },
                      ),
                    )
                  : Positioned(
                      top: 10,
                      left: 10,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          if (isOpen == true) {
                            setState(
                              () {
                                xoffSet = 0;
                                yoffSet = 0;
                                angle = 0;
                                isOpen = false;
                              },
                            );
                            secondLayerState!.setState(
                              () {
                                secondLayerState!.xoffSet = 0;
                                secondLayerState!.yoffSet = 0;
                                secondLayerState!.angle = 0;
                              },
                            );
                          }
                        },
                      ),
                    ),
              HomeScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
