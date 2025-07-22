import 'dart:async';
import 'package:dart_practice/myhome_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigateToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const MyHomePage(title: 'Flutter Demo'),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), navigateToHome);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(246, 214, 44, 101),
      body: Card(
        elevation: 3,

        borderOnForeground: true,
        child: Center(
          child: Container(
            alignment: Alignment.center,
            transformAlignment: AlignmentGeometry.directional(2, 4),
            height: 250,
            width: 250,

            decoration: BoxDecoration(
              backgroundBlendMode: BlendMode.color,
              color: Colors.pink,
              image: DecorationImage(
                image: AssetImage('assets/images/BMII.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
