import 'package:flutter/material.dart';

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
        child: Container(
          child: Drawer(
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
                      title: "Dashboard", press: () {}, icon: Icons.dashboard),
                  ListTileMethod(
                      title: "Profil", press: () {}, icon: Icons.person),
                  ListTileMethod(
                      title: "Bakiye",
                      press: () {},
                      icon: Icons.account_balance),
                  ListTileMethod(
                      title: "Son Hareketler",
                      press: () {},
                      icon: Icons.access_alarms_sharp),
                  ListTileMethod(
                      title: "Hesap Hareketleri",
                      press: () {},
                      icon: Icons.wallet),
                  ListTileMethod(
                      title: "Bildirim Bilgileri",
                      press: () {},
                      icon: Icons.notification_add_rounded),
                  ListTileMethod(
                      title: "Ayarlar", press: () {}, icon: Icons.settings),
                  ListTileMethod(
                      title: "Çıkış Yap", press: () {}, icon: Icons.logout),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ListTileMethod extends StatelessWidget {
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
