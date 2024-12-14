// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/get_start_screen_controller/get_start_screen_controller.dart';
import 'package:new_app/view/widget/get_start_widget/logo_desgin_widget.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<GetStartScreeenControllerIPM>(
        init: GetStartScreeenControllerIPM(),
        builder: (controller) => LogoDeginStartScreenWidget(),
      ),
    );
  }
}
