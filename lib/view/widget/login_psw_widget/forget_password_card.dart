// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  final Function(TextEditingController controller) resetBtnClick;
  final FocusNode resetFocusNode;
  final String? email;

  const ForgotPassword(
      {super.key,
      required this.resetBtnClick,
      required this.resetFocusNode,
      this.email});

  @override
  Widget build(BuildContext context) {
    TextEditingController forgotEditController =
        TextEditingController(text: email);
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: AspectRatio(
          aspectRatio: 1 / 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 15.0, top: 15, left: 15, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Color(0xFF1F1F1F),
                          fontSize: 18,
                          // fontFamily: FontRes.semiBold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.close_rounded,
                        color: Color(0xFF5F5F5F),
                      ),
                    )
                  ],
                ),
              ),
              const Divider(
                color: Color(0xFF5F5F5F),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "Enter your mail on which you have \ncreated an account. We will send a link \nto reset your password",
                  style: TextStyle(
                    color: Color(0xFF9E9E9E),
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: Get.width / 15),
                child: const Text(
                  "Email",
                  style: TextStyle(
                    color: Color(0xFF5F5F5F),
                    //fontFamily: FontRes.semiBold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0xFFECECEC),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  controller: forgotEditController,
                  focusNode: resetFocusNode,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  ),
                  style: const TextStyle(
                    color: Color(0xFF9E9E9E),
                    //fontFamily: FontRes.medium,
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              const Spacer(),
              InkWell(
                onTap: () => resetBtnClick(forgotEditController),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFFE270D),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      //fontFamily: FontRes.semiBold,
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
