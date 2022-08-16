
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/Profile_Widget.dart';
import 'package:loginpage/User_Data.dart';
import 'package:loginpage/edit_profile.dart';

import 'LoginPage.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final User_Data = User_Preferences.myUser;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Kullanıcı'),
        centerTitle: true,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 30,
          ),
          ProfileWidget(
            imagePath: User_Data.imagePath,
            onClicked: () async {},
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text(
                User_Data.name,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ), //Text for Name.
              SizedBox(
                height: 12,
              ),
              Text(
                'Kullanıcı Adı: ${User_Data.name}',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'E-Posta:  ${User_Data.email}',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Şirket:  ${User_Data.sirket}',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ), //Text for E-Mail.//Text for E-Mail.
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Column(
            children: [
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SettingsUI()),
                      );
                    },
                    child: Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Center(
                            child: Text(
                              'Profili Düzenle',
                              style:
                              TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ))),
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Center(
                            child: Text(
                              'Bildirim Ayarları',
                              style:
                              TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ))),
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.red[700],
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Center(
                            child: Text(
                              'Çıkış Yap',
                              style:
                              TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
