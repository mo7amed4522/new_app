// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/admin_responsive_panel/controller/menu_app_controller.dart';
import 'package:new_app/admin_responsive_panel/responsive.dart';
import 'package:new_app/admin_responsive_panel/view/screen/dashboard_screen.dart';
import 'package:new_app/core/constants/components_rive/navigation/side_menu_rive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: context.read<MenuAppControllerIMP>().scaffoldKey,
      drawer: SideMenu(),
      body: GetBuilder<MenuAppControllerIMP>(
        init: MenuAppControllerIMP(),
        builder: (controller) => SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // We want this side menu only for large screen
              if (Responsive.isDesktop(context))
                Expanded(
                  // default flex = 1
                  // and it takes 1/6 part of the screen
                  child: SideMenu(),
                ),
              Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: DashboardScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
