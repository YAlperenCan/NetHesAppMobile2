import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loginpage/BakiyeBilgileri2.dart';
import 'package:loginpage/deneme/DenemeEskiCustomDrawer.dart';
import 'package:loginpage/HesapHareketleri.dart';
import 'package:loginpage/Profile.dart';
import 'package:loginpage/SonHareketler2.dart';

class BottomNavigatorTest extends StatefulWidget {
  const BottomNavigatorTest({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorTest> createState() => _BottomNavigatorTestState();
}

class _BottomNavigatorTestState extends State<BottomNavigatorTest> {

  @override
  Map<String, double> Money = {
    "Girdi_1": 250,
    "Girdi_2": 120,
    "Girdi_3": 45,
    "Girdi_4": 150,
    "Girdi_5": 70
  };
  Map<String, double> Money2 = {
    "çıktı_1": 200,
    "çıktı_2": 120,
    "çıktı_3": 80,
    "çıktı_4": 130,
    "çıktı_5": 200
  };
  int currentIndex=0;
  final screens=[
    Sonhareketler2(),
    BakiyeBilgileri2(),
    HesapHareketleri(),
    Profile()
  ];

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          currentIndex: currentIndex,
          onTap: (index)=>setState(()=>currentIndex=index),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Son Hareketler',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
              label: 'Bakiye Bilgileri',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              label: 'Hesap Hareket',
            ),BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
          unselectedItemColor: Colors.white60,
          selectedItemColor: Colors.white,


        ),
        body: screens[currentIndex]
          //body:IndexedStack(
          //index:currentIndex,           sayfalar arası sayı tutmak istiyorsak bodye bunu koymalıyız.
          //children:screens,
      ),
    );
  }

}
