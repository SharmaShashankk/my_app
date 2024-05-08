import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/modules/base_module/bottom_navigation.dart';
import 'package:my_app/modules/language_screen_module/screen/language_screen.dart';
import 'package:my_app/services/sharedpreferences.dart';
import 'package:my_app/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String loginData = '';

  getLoginData() async {
    loginData = await SharedPreference.getStringData(key: 'phone') ?? '';
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                loginData == '' ? LanguageScreen() : BottomNavigationModule(),
          ));
    });
  }

  @override
  void initState() {
    getLoginData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tealColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/splash.png',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'mi',
                  style: TextStyle(
                      fontSize: 35,
                      color: yellowColor,
                      fontWeight: FontWeight.bold),
                ),
                const TextSpan(
                    text: 'Shop',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))
              ],
            ),
          )
        ],
      ),
    );
  }
}
