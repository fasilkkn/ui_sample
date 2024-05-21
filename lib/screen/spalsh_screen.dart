import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ui_sample/screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer( const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/img/background.JPG'
              ),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Image.asset(
            'assets/img/logo.png',
            scale: 4,),
        ),
      ),
    );
  }
}