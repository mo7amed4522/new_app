// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/core/constants/app_photo.dart';
import 'package:new_app/core/constants/companent.dart';

class PasswordCard extends StatelessWidget {
  final TextEditingController pwdController;
  final FocusNode pwdFocus;
  final String pwdError;
  final bool showPwd;
  final VoidCallback onContinueTap;
  final VoidCallback onForgotPwdTap;
  final VoidCallback onViewBtnTap;
  final VoidCallback onChangeEmailTap;
  final String email;

  const PasswordCard(
      {super.key,
      required this.pwdController,
      required this.pwdFocus,
      required this.pwdError,
      required this.showPwd,
      required this.onContinueTap,
      required this.onForgotPwdTap,
      required this.onViewBtnTap,
      required this.email,
      required this.onChangeEmailTap});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          margin: const EdgeInsets.only(left: 8, right: 8, bottom: 30),
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFF000000).withOpacity(0.5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              profileBox(),
              const SizedBox(height: 30),
              Container(
                height: 44,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(6),
                ),
                alignment: Alignment.center,
                child: TextField(
                  focusNode: pwdFocus,
                  controller: pwdController,
                  obscureText: !showPwd,
                  style: const TextStyle(
                      //fontFamily: FontRes.semiBold,
                      ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 14, top: 10),
                    border: InputBorder.none,
                    hintText: pwdError == "" ? "Password" : pwdError,
                    suffixIcon: InkWell(
                      onTap: onViewBtnTap,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 14),
                        child: Text(
                          showPwd ? "Hide" : "View",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xFF414141),
                            fontSize: 13,
                            //fontFamily: FontRes.bold,
                          ),
                        ),
                      ),
                    ),
                    hintStyle: TextStyle(
                      color: pwdError == ""
                          ? Color(0xFFADADAD)
                          : Color(0xFFEF5350),
                      fontSize: 14,
                      // fontFamily: FontRes.semiBold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SubmitButton1(title: "Continue", onTap: onContinueTap),
              const SizedBox(height: 28),
              InkWell(
                onTap: onForgotPwdTap,
                child: const Text(
                  "Forgot Your Password ?",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileBox() {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Enter the password for the account \nwith the email below',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 13,
              fontFamily: "gilroy",
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  email,
                  style: const TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 17,
                    //fontFamily: FontRes.semiBold,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: onChangeEmailTap,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(30)),
                  child: Image.asset(
                    AppPhotoLink.edit,
                    width: 20,
                    height: 20,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
