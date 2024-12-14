// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/core/constants/app_photo.dart';
import 'package:new_app/core/constants/companent.dart';

class AuthCard extends StatelessWidget {
  final TextEditingController emailController;
  final FocusNode emailFocus;
  final String emailError;
  final VoidCallback onContinueTap;
  final VoidCallback onGoogleTap;
  final VoidCallback onAppleTap;
  final VoidCallback onSignUpTap;
  final VoidCallback onForgotPwdTap;

  const AuthCard(
      {super.key,
      required this.emailController,
      required this.emailFocus,
      required this.emailError,
      required this.onContinueTap,
      required this.onGoogleTap,
      required this.onAppleTap,
      required this.onSignUpTap,
      required this.onForgotPwdTap});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          margin: const EdgeInsets.only(left: 8, right: 8, bottom: 30),
          padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFF000000).withOpacity(0.5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 44,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TextField(
                  controller: emailController,
                  focusNode: emailFocus,
                  style: const TextStyle(),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 14),
                    border: InputBorder.none,
                    hintText: emailError == "" ? "Email" : emailError,
                    hintStyle: TextStyle(
                      color: emailError == ""
                          ? Color(0xFFADADAD)
                          : Color(0xFFEF5350),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SubmitButton1(title: "Continue", onTap: onContinueTap),
              const SizedBox(height: 15),
              const Center(
                child: Text(
                  "or",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              socialButton(
                Image.asset(
                  AppPhotoLink.googleLogo,
                  height: 20,
                  width: 20,
                ),
                "Continue With Google",
                onGoogleTap,
                const EdgeInsets.symmetric(horizontal: 16),
              ),
              const SizedBox(height: 15),
              Visibility(
                visible: Platform.isIOS ? true : false,
                child: socialButton(
                  Image.asset(
                    AppPhotoLink.appleLogo,
                    height: 25,
                    width: 25,
                  ),
                  "Continue With Apple",
                  onAppleTap,
                  const EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: onSignUpTap,
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFFF6C41),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: onForgotPwdTap,
                child: const Text(
                  "Forgot Your Password ?",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFFFF6C41),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget socialButton(
      Image image, String title, VoidCallback onTap, EdgeInsets padding) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 44,
        width: Get.width,
        padding: padding,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 10,
              child: image,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF444444),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
