import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/login_ui_kit_screen_controller/splach_ui_kit_screen_controller.dart';
import 'package:new_app/view/widget/login_ui_kit_widget/splach_screen_widget.dart';

class SplachUiKitScreen extends StatelessWidget {
  const SplachUiKitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplachUiKitScreenControllerIMP>(
        init: SplachUiKitScreenControllerIMP(),
        builder: (controller) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              logo(160, 160),
              const SizedBox(
                height: 25,
              ),
              richText(30),
            ],
          ),
        ),
      ),
    );
  }
}
