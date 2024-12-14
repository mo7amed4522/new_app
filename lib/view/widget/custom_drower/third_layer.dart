// ignore_for_file: file_names, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, sized_box_for_whitespace, avoid_print, deprecated_member_use, prefer_final_fields, must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/core/constants/app_photo.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/core/routes/app_route.dart';

class ThierdPage extends StatelessWidget {
  const ThierdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(top: 50)),
        CircleAvatar(
          radius: MediaQuery.of(context).size.width / 9,
          backgroundImage: AssetImage(
            AppPhotoLink.logo,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            '    CAR   WASH',
            style: GoogleFonts.libreBaskerville(
              textStyle: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: Colors.white),
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 4)),
        TextButton(
          onPressed: () {},
          child: Text(
            'Order Now !',
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.displaySmall,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 40)),
        TextButton(
          onPressed: () {},
          child: Text(
            'Car Information',
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.displaySmall,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 40)),
        TextButton(
          onPressed: () {},
          child: Text(
            'Information',
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.displaySmall,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 40)),
        TextButton(
          onPressed: () {
            Get.toNamed(AppRouter.webViewScreen);
          },
          child: Text(
            'Terms  &  Conditions ',
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.displaySmall,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'Sign out',
            style: GoogleFonts.libreBaskerville(
              textStyle: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(color: Colors.white),
              fontSize: 30,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height / 30)),
      ],
    );
  }
}
