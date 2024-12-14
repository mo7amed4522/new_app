import 'package:get/get.dart';
import 'package:new_app/admin_responsive_panel/view/screen/main_screen_panel.dart';
import 'package:new_app/core/routes/app_route.dart';
import 'package:new_app/login_reposive_screen/Screens/Welcome/welcome_screen.dart';
import 'package:new_app/view/screen/animated_login_screen/animated_login_screen.dart';
import 'package:new_app/view/screen/get_start_screen/get_start_screen.dart';
import 'package:new_app/view/screen/home_screen/home_screen.dart';
import 'package:new_app/view/screen/home_screen_two/home_screen_two.dart';
import 'package:new_app/view/screen/login_psw_screen/login_pwd_screen.dart';
import 'package:new_app/view/screen/login_red_screen/login_red_screen.dart';
import 'package:new_app/view/screen/login_red_screen/register_red_screen.dart';
import 'package:new_app/view/screen/login_red_screen/welcom_red_screen.dart';
import 'package:new_app/view/screen/login_screen/login_screen.dart';
import 'package:new_app/view/screen/login_screen_ui/login_screen_ui.dart';
import 'package:new_app/view/screen/login_ui_kit_screen/main_ui_kit_screen.dart';
import 'package:new_app/view/screen/login_ui_kit_screen/sign_in_eight_screen.dart';
import 'package:new_app/view/screen/login_ui_kit_screen/sign_in_five_screen.dart';
import 'package:new_app/view/screen/login_ui_kit_screen/sign_in_four_screen.dart';
import 'package:new_app/view/screen/login_ui_kit_screen/sign_in_nine_screen.dart';
import 'package:new_app/view/screen/login_ui_kit_screen/sign_in_one_screen.dart';
import 'package:new_app/view/screen/login_ui_kit_screen/sign_in_seven_screen.dart';
import 'package:new_app/view/screen/login_ui_kit_screen/sign_in_six_screen.dart';
import 'package:new_app/view/screen/login_ui_kit_screen/sign_in_ten_screen.dart';
import 'package:new_app/view/screen/login_ui_kit_screen/sign_in_three_screen.dart';
import 'package:new_app/view/screen/login_ui_kit_screen/sign_in_two_screen.dart';
import 'package:new_app/view/screen/login_ui_kit_screen/splach_ui_kit_screen.dart';
import 'package:new_app/view/screen/register_screen/register_screen.dart';
import 'package:new_app/view/screen/rive_app/home_rive_screen.dart';
import 'package:new_app/view/screen/start_login_page/start_login_page.dart';
import 'package:new_app/view/screen/web_view_screen/web_view_screen.dart';
import 'package:new_app/view/widget/custom_drower/custom_drawer.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: AppRouter.start,
      page: () => const GetStartScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.login,
      page: () => const LoginScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.loginPwd,
      page: () => const LoginPwdScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.registerScreen,
      page: () => const RegisterScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.homeScreen,
      page: () => const HomeScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.customDrawer,
      page: () => const CustomDraw(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.webViewScreen,
      page: () => const WebViewScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.homeScreenTwo,
      page: () => const HomeScreenTwo(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.loginScreenAnimated,
      page: () => const LoginScreenAnimated(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.startLoginPage,
      page: () => const StartLoginPage(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.splachScreen,
      page: () => const SplachUiKitScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.mainScreen,
      page: () => const MainUiKitScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.signInOne,
      page: () => const SignInOneScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.signInTwo,
      page: () => const SignInTwoScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.signInThree,
      page: () => const SignInThreeScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.signInFour,
      page: () => const SignInFourScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.signInFive,
      page: () => const SignInFiveScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.signInSix,
      page: () => const SignInSixScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.signInSeven,
      page: () => const SignInSevenScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.signInEight,
      page: () => const SignInEightScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.signInNine,
      page: () => const SignInNineScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.signInTen,
      page: () => const SignInTenScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.loginScreenUI,
      page: () => const LoginScreenUi(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.welcomRedScreen,
      page: () => const WelcomeScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.loginRedScreen,
      page: () => const LoginRedScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.registerRedScreen,
      page: () => const RegisterRedScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.riveAppHome,
      page: () => const RiveAppHome(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.adminResponseDashbard,
      page: () => const MainScreen(),
      transition: Transition.fadeIn),
  GetPage(
      name: AppRouter.loginResposiveScreen,
      page: () => const WelcomeScreenLogin(),
      transition: Transition.fadeIn),
];
