import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:new_app/core/constants/app_photo.dart';
import 'package:new_app/view/widget/custom_bottom_navbar_widget/account_bottom_navbar_widget.dart';
import 'package:new_app/view/widget/custom_bottom_navbar_widget/car_type_bottom_navbar_widget.dart';
import 'package:new_app/view/widget/custom_bottom_navbar_widget/home_bottom_navbar_widget.dart';
import 'package:new_app/view/widget/custom_bottom_navbar_widget/information_bottom_navbar_widget.dart';

abstract class HomeScreenTwoContaroller extends GetxController {}

class HomeScreenTwoControllerIMP extends HomeScreenTwoContaroller {
  var screen = [
    const HomeBottomNavbarWidget(),
    const CarTypeBottomNavbarWidget(),
    const InformationBottomNavbarWidget(),
    const AccountBottomNavbarWidget(),
  ];
  List<String> listOfName = [
    'Home',
    'Car Type',
    'Information',
    'Account',
  ];
  List<String> listOfIcons = [
    AppPhotoLink.home,
    AppPhotoLink.carSvg,
    AppPhotoLink.information,
    AppPhotoLink.account
  ];
  var currentIndex = 0;

  changeIndex(index) {
    currentIndex = index;
    HapticFeedback.lightImpact();
    update();
  }
}
