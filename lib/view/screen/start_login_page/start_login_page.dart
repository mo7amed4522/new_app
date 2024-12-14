// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/controller/start_login_page_controller/start_login_page_controller.dart';

class StartLoginPage extends StatelessWidget {
  const StartLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<StartLoginPageControllerIMP>(
        init: StartLoginPageControllerIMP(),
        builder: (_controller) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: _controller.goToLoginAnimated,
                child: Text(
                  'Login Animation',
                  style: GoogleFonts.poppins(fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: _controller.goToLoginOrange,
                child: Text(
                  'Login Orange',
                  style: GoogleFonts.poppins(fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: _controller.goToLoginShapes,
                child: Text(
                  'Login Shapes',
                  style: GoogleFonts.poppins(fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: _controller.goToLoginScreenUI,
                child: Text(
                  'Login UI',
                  style: GoogleFonts.poppins(fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: _controller.goToRedLogin,
                child: Text(
                  'Login Red Screen',
                  style: GoogleFonts.poppins(fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: _controller.goToRiveHome,
                child: Text(
                  'Login Rive',
                  style: GoogleFonts.poppins(fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: _controller.goToAdminDashboard,
                child: Text(
                  'Login Dasboard',
                  style: GoogleFonts.poppins(fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: _controller.goToLoginResponsive,
                child: Text(
                  'Login Responsive UI',
                  style: GoogleFonts.poppins(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
