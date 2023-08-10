import 'package:flutter/material.dart';
import 'package:loginpage/user_onboard/loginScreen.dart';
import 'package:loginpage/user_onboard/sginUpScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.lightGreen,
      ),
      home: LoginScreen(),
    );
  }
}

