import 'package:ec_app/auth.dart';
import 'package:ec_app/complete_profile.dart';
import 'package:ec_app/forget_pass.dart';
import 'package:ec_app/home_page.dart';
import 'package:ec_app/intro_screen.dart';
import 'package:ec_app/register_page.dart';
import 'package:ec_app/rr.dart';
import 'package:flutter/material.dart';
import 'package:ec_app/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:OnBoardingScreen(),
    );
  }
}

