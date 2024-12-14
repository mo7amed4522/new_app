// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:new_app/admin_responsive_panel/constant/app_photo.dart';
import 'package:new_app/admin_responsive_panel/contsant.dart';
import 'package:new_app/admin_responsive_panel/view/widget/dashboard/storg_info_card.dart';
import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: AppPhoto.documents,
            title: "Documents Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: AppPhoto.media,
            title: "Media Files",
            amountOfFiles: "15.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: AppPhoto.folder,
            title: "Other Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: AppPhoto.unknown,
            title: "Unknown",
            amountOfFiles: "1.3GB",
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
