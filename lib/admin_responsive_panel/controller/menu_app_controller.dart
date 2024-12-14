import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class MenuAppController extends GetxController {}

class MenuAppControllerIMP extends MenuAppController {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }
}
