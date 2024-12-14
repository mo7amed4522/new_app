import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/controller/login_ui_kit_screen_controller/sign_in_six_screen_controller.dart';
import 'package:new_app/view/widget/login_ui_kit_widget/sign_in_six_widget/sign_in_six_widget.dart';

class SignInSixScreen extends StatelessWidget {
  const SignInSixScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: GetBuilder<SignInSixScreenControllerIMP>(
        init: SignInSixScreenControllerIMP(),
        builder: (controller) => Container(
          alignment: Alignment.center,
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromRGBO(33, 137, 156, 0.15),
              Colors.white,
              Colors.white,
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //to give space from top
                const Expanded(flex: 1, child: Center()),

                //logo and text section
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      logo(size.height / 8, size.height / 8),
                      const SizedBox(
                        height: 16,
                      ),
                      richText(24),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Let’s login for explore continues',
                        style: GoogleFonts.inter(
                          fontSize: 14.0,
                          color: const Color(0xFF969AA8),
                        ),
                      ),
                    ],
                  ),
                ),

                //sign in google and facebook section
                Expanded(flex: 2, child: signInGoogleFacebookButton(size)),

                //email and password textField section
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      //email textField
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Email',
                            style: GoogleFonts.inter(
                              fontSize: 14.0,
                              color: Colors.black,
                              height: 1.0,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          emailTextField(size)
                        ],
                      ),

                      const SizedBox(
                        height: 16,
                      ),

                      //password textField
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Password',
                            style: GoogleFonts.inter(
                              fontSize: 14.0,
                              color: Colors.black,
                              height: 1.0,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          passwordTextField(size),
                        ],
                      ),

                      const SizedBox(
                        height: 16,
                      ),

                      //keep signed in and forget password section
                      keepSigned_ForgetSection(),
                    ],
                  ),
                ),

                //sign in button section
                Expanded(flex: 1, child: signInButton(size)),

                //sign up text here
                Expanded(flex: 2, child: buildFooter(size)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
