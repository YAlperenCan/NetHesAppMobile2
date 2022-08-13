import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginpage/BakiyeBilgileri.dart';
import 'package:loginpage/BakiyeBilgileri2.dart';
import 'package:loginpage/BottomNavigatorTest.dart';
import 'package:loginpage/Dasboard.dart';
import 'package:loginpage/LoginPage.dart';
import 'HesapHareketleri.dart';
import 'SonHareketler2.dart';





void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.black
  ));
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
      theme: ThemeData(primarySwatch: Colors.blue),
      //darkTheme: ThemeData(
        //brightness: Brightness.dark

    //  ),themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,

      home: BottomNavigatorTest(),
    );
  }
}

