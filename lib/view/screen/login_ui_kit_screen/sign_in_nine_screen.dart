import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/controller/login_ui_kit_screen_controller/sign_in_nine_screen_controller.dart';
import 'package:new_app/view/widget/login_ui_kit_widget/sign_in_nine_widget/sign_in_nine_widget.dart';

class SignInNineScreen extends StatelessWidget {
  const SignInNineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Scaffold(
        resizeToAvoidBottomInset: false,
        body: GetBuilder<SignInNineScreenControllerIMP>(
          init: SignInNineScreenControllerIMP(),
          builder: (controller) => Container(
            alignment: Alignment.center,
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
                gradient: RadialGradient(colors: [
              Color.fromRGBO(33, 137, 156, 0.15),
              Colors.white,
            ], center: Alignment.topRight, radius: 0.8)),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //welcome text, logo and loginPage text here
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        welcomeText(),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        logo(size.height / 8, size.height / 8),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        richText(20.42),
                      ],
                    ),
                  ),

                  //email, password textField and recovery password here
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        emailTextField(size, controller.emailController),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        passwordTextField(size, controller.passwordController),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Recovery Password?',
                            style: GoogleFonts.inter(
                              fontSize: 11.0,
                              color: const Color(0xFF6A6F7D),
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //sign in button here
                  Expanded(flex: 1, child: signInButton(size)),

                  //footer content
                  //don't have account text,social logo and sign up text here
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildNoAccountText(),
                        SizedBox(
                          height: size.height * 0.03,
                        ),

                        //here social logo and sign up text
                        buildFooter(size),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
