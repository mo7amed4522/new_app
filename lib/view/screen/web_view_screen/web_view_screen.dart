// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/controller/web_view_screen_controller/web_view_screen_controller.dart';
import 'package:new_app/core/constants/app_photo.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  const WebViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WebViewScreenControllerIMP _controller = WebViewScreenControllerIMP();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Terms Of Use',
          style: GoogleFonts.libreBaskerville(
            textStyle: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(color: Colors.red),
            fontSize: 30,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
        leading: MaterialButton(
            onPressed: _controller.onBackTap,
            child: Image.asset(AppPhotoLink.backArrow)),
      ),
      body: GetBuilder<WebViewScreenControllerIMP>(
        init: WebViewScreenControllerIMP(),
        builder: (controller) => WebViewWidget(
          controller: controller.webController,
        ),
      ),
    );
  }
}
