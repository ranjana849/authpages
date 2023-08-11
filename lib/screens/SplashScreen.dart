import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loginpage/user_onboard/loginScreen.dart';

import '../widgets/riveSplashanimation.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size. height,
            color: Color(0xff02022C00),
            child: RiveSplashAnimationWidget()),

            SizedBox(height: 16),
            Text(
              'My App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ]
        )
      ),
    );
  }
}






