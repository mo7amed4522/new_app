// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, must_be_immutable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:new_app/core/constants/app_photo.dart';

class CustomTextFormFild extends StatelessWidget {
  final String? hintText;
  final String? lable;
  final IconData? suffixIcon;
  final TextEditingController? mycontroller;
  final String? Function(String?) validator;
  final TextInputType? textInputType;
  bool? enabled = true;
  final bool? isShowText;
  final void Function()? sufficsIconTap;
  CustomTextFormFild(
      {super.key,
      this.sufficsIconTap,
      this.isShowText,
      this.textInputType,
      required this.validator,
      this.mycontroller,
      this.hintText,
      this.lable,
      this.suffixIcon,
      this.enabled});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, left: 4, right: 4),
      child: TextFormField(
        enabled: enabled,
        keyboardType: textInputType,
        obscureText: isShowText == null || isShowText == false ? false : true,
        validator: validator,
        style: Theme.of(context).textTheme.bodySmall,
        controller: mycontroller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 10.0),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          suffixIcon: InkWell(
              onTap: sufficsIconTap,
              child: Icon(
                suffixIcon,
                color: Theme.of(context).primaryColorLight,
              )),
          label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 9),
              child: Text(lable!)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.ontap, required this.buttonName});

  final VoidCallback ontap;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: Get.width / 1.3,
        height: Get.height / 15,
        decoration: ShapeDecoration(
            color: Theme.of(context).primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            shadows: [
              BoxShadow(
                  color: Color(0x19C94210),
                  blurRadius: 30,
                  offset: Offset(0, 10),
                  spreadRadius: 0)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              CupertinoIcons.flame_fill,
              size: 24,
              color: Theme.of(context).textTheme.labelLarge!.color,
            ),
            Text(
              buttonName,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SvgPicture.asset(
              AppPhotoLink.cartFill,
              width: 3,
              height: 4,
              fit: BoxFit.fill,
              color: Theme.of(context).textTheme.labelLarge!.color,
            )
          ],
        ),
      ),
    );
  }
}

class SubmitButton1 extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const SubmitButton1({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFF6F43),
              Color(0xFFFE1B03),
            ],
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
