import 'package:flutter/material.dart';

import 'BakiyeBilgileri.dart';
import 'HesapHareketleri.dart';
import 'LoginPage.dart';
import 'SonHareketler2.dart';

class CustomDrawer extends StatelessWidget {
const CustomDrawer({
Key? key,
}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Drawer(
    width: 300,
    backgroundColor: Colors.blue.withOpacity(0.9),
    child: SingleChildScrollView(
      child: Column(
        children: [
          DrawerHeader(
              child: Image.network(
                  'https://cdn.discordapp.com/attachments/731126213292064871/1001464747935408158/logo-nethesapp-white.png')),
          Container(
            height: 3,
            child: const Divider(
              color: Colors.white54,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ListTileMethod(
              title: "Dashboard",
              press: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>Sonhareketler2()),
              );},
              icon: Icons.access_alarms_sharp),
          ListTileMethod(
              title: "Bakiye Bilgiler",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>BakiyeBilgileri()),
                );
              },
              icon: Icons.account_balance),


          ListTileMethod(
              title: "Hesap Hareketleri",
              press: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>HesapHareketleri()),
              );},
              icon: Icons.wallet),
          ListTileMethod(
              title: "Profil", press: () {}, icon: Icons.person),
          ListTileMethod(
              title: "Çıkış Yap", press: () {Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>LoginPage()),
          );}, icon: Icons.logout),
        ],
      ),
    ),
  );
}
}class ListTileMethod extends StatelessWidget {
  final String title;
  final IconData? icon;
  final VoidCallback? press;
  const ListTileMethod({
    required this.title,
    @required this.press,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        horizontalTitleGap: 0.0,
        onTap: press,
        leading: Icon(icon, color: Colors.white54, size: 25),
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ));
  }
}