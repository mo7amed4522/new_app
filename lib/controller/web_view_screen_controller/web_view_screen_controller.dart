// ignore_for_file: unused_element

import 'package:get/get.dart';
import 'package:new_app/core/constants/app_photo.dart';
import 'package:webview_flutter/webview_flutter.dart';

abstract class WebViewScreenController extends GetxController {
  void onBackTap();
  void onPageFinished(String url);
  void onProgress(int progress);
  void onPageStarted(String url);
}

class WebViewScreenControllerIMP extends WebViewScreenController {
  late WebViewController webController;
  var loadingPercentage = 0;

  @override
  void onInit() {
    webController = _accessWebView();
    super.onInit();
  }

  @override
  void onPageFinished(String url) {
    loadingPercentage = 100;
    update();
  }

  @override
  void onProgress(int progress) {
    loadingPercentage = progress;
    update();
  }

  @override
  void onPageStarted(String url) {
    loadingPercentage = 0;
    update();
  }

  @override
  void onBackTap() {
    Get.back();
  }

  WebViewController _accessWebView() {
    return WebViewController()
      ..loadFlutterAsset(AppPhotoLink.termuse)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: onProgress,
          onPageStarted: onPageStarted,
          onPageFinished: onPageFinished,
        ),
      );
  }
}
