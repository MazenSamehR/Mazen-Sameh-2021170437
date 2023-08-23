import 'package:flutter/material.dart';
import 'package:helloworld/home_page.dart';
import 'login_page.dart';

class Talabat_Screen extends StatefulWidget {
  @override
  _Talabat_ScreenState createState() => _Talabat_ScreenState();
}

class _Talabat_ScreenState extends State<Talabat_Screen> {
  @override
  void initState() {
    super.initState();
    navigateToLogin();
  }

  void navigateToLogin() {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SafeArea(
          child: Center(
              child: Text(
        "talabat",
        style: TextStyle(
            color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
      ))),
    );
  }
}
