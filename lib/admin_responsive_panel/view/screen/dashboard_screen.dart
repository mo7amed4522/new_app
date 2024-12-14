// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:new_app/admin_responsive_panel/contsant.dart';
import 'package:new_app/admin_responsive_panel/responsive.dart';
import 'package:new_app/admin_responsive_panel/view/widget/dashboard/header.dart';
import 'package:new_app/admin_responsive_panel/view/widget/dashboard/my_fields.dart';
import 'package:new_app/admin_responsive_panel/view/widget/dashboard/recent_file.dart';
import 'package:new_app/admin_responsive_panel/view/widget/dashboard/storge_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(height: defaultPadding),
                      RecentFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context)) StorageDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                // On Mobile means if the screen is less than 850 we don't want to show it
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
