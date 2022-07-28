import 'package:flutter/material.dart';
import 'package:loginpage/Dasboard.dart';
import 'package:loginpage/LoginPage.dart';



void main() {
  runApp(const loginpage());
}

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}

