import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/biding/biding_controller.dart';
import 'package:new_app/core/routes/routes.dart';
import 'package:new_app/core/server/serves.dart';
import 'package:new_app/core/theme/theme_color.dart';
import 'package:new_app/core/translation/my_translation.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

MyServices myServices = Get.find();
void initialize() {
  if (myServices.sharedPreferences.getBool('theme') == true) {
    Get.changeThemeMode(ThemeMode.dark);
  } else if (myServices.sharedPreferences.getBool('theme') == false) {
    Get.changeThemeMode(ThemeMode.light);
  } else {
    Get.changeThemeMode(ThemeMode.system);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onInit: initialize,
      translations: MyTranslation(),
      theme: AppColor.customLightThem,
      locale: const Locale('en'),
      darkTheme: AppColor.customDarkThem,
      themeMode: ThemeMode.system,
      title: 'Car Wash',
      initialBinding: InitialBindings(),
      getPages: routes,
    );
  }
}
