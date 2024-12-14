// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class FirstLayer extends StatelessWidget {
  const FirstLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 24, 22, 129),
              Color(0xFFFE1B03),
            ],
          ),
        ),
        //child: Center(child: Text('Kahled')),
      ),
    );
  }
}
