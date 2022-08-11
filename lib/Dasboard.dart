import 'package:flutter/material.dart';
import 'package:loginpage/BakiyeBilgileri.dart';
import 'package:loginpage/HesapHareketleri.dart';
import 'package:loginpage/LoginPage.dart';

import 'CustomDrawer.dart';
import 'SonHareketler2.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _State();
}

class _State extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomDrawer(),
      ),
    );
  }
}




