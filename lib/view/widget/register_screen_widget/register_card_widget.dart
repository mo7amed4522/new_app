// ignore_for_file: unused_field, must_be_immutable, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/register_screen_contoller/register_screen_controller.dart';
import 'package:new_app/core/constants/companent.dart';

class RegisterCard extends StatelessWidget {
  RegisterScreenContollerIPM conroller;
  RegisterCard({super.key, required this.conroller});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          margin: const EdgeInsets.only(left: 8, right: 8, bottom: 30),
          padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFF000000).withOpacity(0.5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Looks like you don't have an account. \nLet's create new account ",
                style: TextStyle(
                  color: Color(0xFFDDDDDD),
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 25),
              textField(
                controller: conroller.emailController,
                focusNode: conroller.emailFocus,
                error: conroller.emailError,
                textCapitalization: TextCapitalization.none,
                hint: "Email",
              ),
              const SizedBox(height: 20),
              textField(
                controller: conroller.fullNameController,
                focusNode: conroller.fullNameFocus,
                error: conroller.fullNameError,
                textCapitalization: TextCapitalization.sentences,
                hint: 'Full Name',
              ),
              const SizedBox(height: 20),
              textField(
                controller: conroller.pwdController,
                focusNode: conroller.pwdFocus,
                error: conroller.pwdError,
                hint: 'Password',
                showPwd: conroller.showPwd,
                textCapitalization: TextCapitalization.sentences,
                onViewTap: conroller.onviewTap,
              ),
              const SizedBox(height: 20),
              textField(
                controller: conroller.confirmPwdController,
                focusNode: conroller.confirmPwdFocus,
                error: conroller.confirmPwdError,
                hint: 'Confirm Password',
                textCapitalization: TextCapitalization.sentences,
                showPwd: false,
              ),
              const SizedBox(height: 20),
              textField(
                  controller: conroller.ageController,
                  focusNode: conroller.ageFocus,
                  error: conroller.ageError,
                  hint: 'Enter Age',
                  textCapitalization: TextCapitalization.sentences,
                  textInputType: TextInputType.number),
              const SizedBox(height: 25),
              policyText(),
              const SizedBox(height: 30),
              SubmitButton1(
                title: "Agree & Continue",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textField(
      {required TextEditingController controller,
      required FocusNode focusNode,
      required String error,
      required String hint,
      bool? showPwd,
      required TextCapitalization textCapitalization,
      VoidCallback? onViewTap,
      TextInputType textInputType = TextInputType.text}) {
    return Container(
      height: 44,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextField(
        focusNode: focusNode,
        controller: controller,
        obscureText: showPwd == null ? false : !showPwd,
        textCapitalization: textCapitalization,
        keyboardType: textInputType,
        style: const TextStyle(
            // fontFamily: FontRes.semiBold,
            ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 14, top: 12),
          border: InputBorder.none,
          hintText: error == "" ? hint : error,
          suffixIcon: onViewTap == null
              ? const SizedBox()
              : InkWell(
                  onTap: onViewTap,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Text(
                      showPwd! ? 'Hide' : 'View',
                      style: const TextStyle(
                        color: Color(0xFF414141),
                        fontSize: 13,
                        // fontFamily: FontRes.bold,
                      ),
                    ),
                  ),
                ),
          hintStyle: TextStyle(
            color: error == "" ? Color(0xFFADADAD) : Color(0xFFEF5350),
            fontSize: 14,
            //fontFamily: FontRes.semiBold,
          ),
        ),
      ),
    );
  }

  Widget policyText() {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: "By selecting Agree and continue below, \n I agree to ",
            style: TextStyle(
              color: Color(0xFFDDDDDD),
              fontSize: 13,
              // fontFamily: FontRes.regular,
            ),
          ),
          TextSpan(
            text: "Terms of Use",
            recognizer: TapGestureRecognizer()..onTap = () {},
            style: const TextStyle(
              color: Color(0xFFF98C6C),
              fontSize: 13,
              // fontFamily: FontRes.semiBold,
            ),
          ),
          const TextSpan(
            text: " and ",
            style: TextStyle(
              color: Color(0xFFDDDDDD),
              fontSize: 13,
              //fontFamily: FontRes.regular,
            ),
          ),
          TextSpan(
            text: "Privacy Policy",
            recognizer: TapGestureRecognizer()..onTap = () {},
            style: const TextStyle(
              color: Color(0xFFF98C6C),
              fontSize: 13,
              // fontFamily: FontRes.semiBold,
            ),
          ),
        ],
      ),
    );
  }
}
