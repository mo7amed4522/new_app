// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_app/admin_responsive_panel/constant/app_photo.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset(AppPhoto.logo),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: AppPhoto.menu_dashboard,
            press: () {},
          ),
          DrawerListTile(
            title: "Transaction",
            svgSrc: AppPhoto.menu_task,
            press: () {},
          ),
          DrawerListTile(
            title: "Task",
            svgSrc: AppPhoto.menu_task,
            press: () {},
          ),
          DrawerListTile(
            title: "Documents",
            svgSrc: AppPhoto.menu_doc,
            press: () {},
          ),
          DrawerListTile(
            title: "Store",
            svgSrc: AppPhoto.menu_store,
            press: () {},
          ),
          DrawerListTile(
            title: "Notification",
            svgSrc: AppPhoto.menu_notification,
            press: () {},
          ),
          DrawerListTile(
            title: "Profile",
            svgSrc: AppPhoto.menu_profile,
            press: () {},
          ),
          DrawerListTile(
            title: "Settings",
            svgSrc: AppPhoto.menu_setting,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  });

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
