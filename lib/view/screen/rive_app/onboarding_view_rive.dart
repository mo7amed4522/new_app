// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:new_app/core/constants/app_photo.dart';
import 'package:new_app/core/theme/theme_lang.dart';
import 'package:new_app/view/screen/rive_app/signin_view_rive.dart';
import 'package:rive/rive.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key, this.closeModal});

  // Close modal callback for any screen that uses this as a modal
  final Function? closeModal;

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView>
    with TickerProviderStateMixin {
  // Animation controller that shows the sign up modal as well as translateY boarding content together
  AnimationController? _signInAnimController;

  // Control touch effect animation for the "Start the Course" button
  late RiveAnimationController _btnController;

  @override
  void initState() {
    super.initState();
    _signInAnimController = AnimationController(
        duration: const Duration(milliseconds: 350),
        upperBound: 1,
        vsync: this);

    _btnController = OneShotAnimation("active", autoplay: false);

    const springDesc = SpringDescription(
      mass: 0.1,
      stiffness: 40,
      damping: 5,
    );

    _btnController.isActiveChanged.addListener(() {
      if (!_btnController.isActive) {
        final springAnim = SpringSimulation(springDesc, 0, 1, 0);
        _signInAnimController?.animateWith(springAnim);
      }
    });
  }

  @override
  void dispose() {
    _signInAnimController?.dispose();
    _btnController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
          child: Center(
            child: OverflowBox(
              maxWidth: double.infinity,
              child: Transform.translate(
                offset: const Offset(200, 100),
                child: Container(
                  decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(AppPhotoLink.spline)),
                  ),
                ),
              ),
            ),
          ),
        ),
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          child: const RiveAnimation.asset(AppPhotoLink.shapesRiv),
        ),
        AnimatedBuilder(
          animation: _signInAnimController!,
          builder: (context, child) {
            return Transform(
                transform: Matrix4.translationValues(
                    0, -50 * _signInAnimController!.value, 0),
                child: child);
          },
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 80, 40, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 260,
                    padding: const EdgeInsets.only(bottom: 16),
                    child: const Text(
                      "Learn design & code",
                      style: TextStyle(fontFamily: "Poppins", fontSize: 60),
                    ),
                  ),
                  Text(
                    "Don’t skip design. Learn design and code, by building real apps with React and Swift. Complete courses about the best tools.",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontFamily: "Inter",
                        fontSize: 17),
                  ),
                  const SizedBox(height: 16),
                  const Spacer(),
                  GestureDetector(
                    child: Container(
                      width: 236,
                      height: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10,
                            offset: const Offset(0, 10),
                          )
                        ],
                      ),
                      child: Stack(children: [
                        RiveAnimation.asset(
                          AppPhotoLink.buttonRiv,
                          fit: BoxFit.cover,
                          controllers: [_btnController],
                        ),
                        Center(
                          child: Transform.translate(
                            offset: const Offset(4, 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.arrow_forward_rounded),
                                SizedBox(width: 4),
                                Text(
                                  "Start the course",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        )
                      ]),
                    ),
                    onTap: () {
                      _btnController.isActive = true;
                    },
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Purchase includes access to 30+ courses, 240+ premium tutorials, 120+ hours of videos, source files and certificates.",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontFamily: "Inter",
                        fontSize: 13),
                  ),
                ],
              ),
            ),
          ),
        ),
        RepaintBoundary(
          child: AnimatedBuilder(
            animation: _signInAnimController!,
            builder: (context, child) {
              return Stack(
                children: [
                  Positioned(
                      top: 100 - (_signInAnimController!.value * 180),
                      right: 20,
                      child: child!),
                  Positioned.fill(
                    child: IgnorePointer(
                      ignoring: true,
                      child: Opacity(
                        opacity: 0.4 * _signInAnimController!.value,
                        child: Container(color: RiveAppTheme.shadow),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(
                      0,
                      -MediaQuery.of(context).size.height *
                          (1 - _signInAnimController!.value),
                    ),
                    child: SignInView(
                      closeModal: () {
                        _signInAnimController?.reverse();
                      },
                    ),
                  ),
                ],
              );
            },
            child: SafeArea(
              child: CupertinoButton(
                padding: EdgeInsets.zero,
                borderRadius: BorderRadius.circular(36 / 2),
                minSize: 36,
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(36 / 2),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 10))
                    ],
                  ),
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  widget.closeModal!();
                },
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
