import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loginpage/CustomDrawer.dart';
import 'package:loginpage/Dasboard.dart';

class Sonhareketler2 extends StatefulWidget {
  const Sonhareketler2({Key? key}) : super(key: key);

  @override
  State<Sonhareketler2> createState() => _Sonhareketler2State();
}

class _Sonhareketler2State extends State<Sonhareketler2> {
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
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Son Hareketler"),
          centerTitle: true,
        ),
        //drawer: CustomDrawer(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 27),
            width: 700,
            height: 660,
            decoration: BoxDecoration(color: Colors.blue[100]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn.discordapp.com/attachments/731126213292064871/1006821181208395836/background-2481466__340.webp'),
                            fit: BoxFit.cover,
                            opacity: 0.10),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.black, spreadRadius: 1)
                        ]),
                    height: 230,
                    width: 400,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 200),
                          child: Text(
                            "GİRİŞ HAREKETLERİ",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          height: 205,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              chartmethodgir(
                                  Money["Girdi_1"], Money["Girdi_1"]),
                              chartmethodgir(
                                  Money["Girdi_2"], Money["Girdi_2"]),
                              chartmethodgir(
                                  Money["Girdi_3"], Money["Girdi_3"]),
                              chartmethodgir(
                                  Money["Girdi_4"], Money["Girdi_4"]),
                              chartmethodgir(
                                  Money["Girdi_5"], Money["Girdi_5"]),
                              chartmethodgir(
                                  Money["Girdi_1"], Money["Girdi_1"]),
                              chartmethodgir(
                                  Money["Girdi_2"], Money["Girdi_2"]),
                              chartmethodgir(
                                  Money["Girdi_3"], Money["Girdi_3"]),
                              chartmethodgir(
                                  Money["Girdi_4"], Money["Girdi_4"]),
                              chartmethodgir(
                                  Money["Girdi_5"], Money["Girdi_5"]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn.discordapp.com/attachments/731126213292064871/1006821181208395836/background-2481466__340.webp'),
                            fit: BoxFit.cover,
                            opacity: 0.10),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.black, spreadRadius: 1)
                        ]),
                    height: 230,
                    width: 400,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 200,
                          ),
                          child: Text(
                            "ÇIKIŞ HAREKETLERİ",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          height: 205,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              chartmethodcik(
                                  Money2["çıktı_1"], Money2["çıktı_1"]),
                              chartmethodcik(
                                  Money2["çıktı_2"], Money2["çıktı_2"]),
                              chartmethodcik(
                                  Money2["çıktı_3"], Money2["çıktı_3"]),
                              chartmethodcik(
                                  Money2["çıktı_4"], Money2["çıktı_4"]),
                              chartmethodcik(
                                  Money2["çıktı_5"], Money2["çıktı_5"]),
                              chartmethodcik(
                                  Money2["çıktı_1"], Money2["çıktı_1"]),
                              chartmethodcik(
                                  Money2["çıktı_2"], Money2["çıktı_2"]),
                              chartmethodcik(
                                  Money2["çıktı_3"], Money2["çıktı_3"]),
                              chartmethodcik(
                                  Money2["çıktı_4"], Money2["çıktı_4"]),
                              chartmethodcik(
                                  Money2["çıktı_5"], Money2["çıktı_5"]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column chartmethodgir(@required double? yukseklik, @required double? sayisi) {
    double hareket(double tutar) {
      return ((tutar) * 200) / 300;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          height: hareket(yukseklik!),
          width: 26,
          margin: EdgeInsets.only(
            left: 7,
            right: 7,
          ),
          child: RotatedBox(
            quarterTurns: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 8, top: 6),
              child: Text(
                sayisi.toString(),
                style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.none,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Text(
          "12.60",
          style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              decoration: TextDecoration.none),
        )
      ],
    );
  }

  Column chartmethodcik(@required double? yukseklik, @required double? sayisi) {
    double hareket(double tutar) {
      return ((tutar) * 250) / 300;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.blue),
          height: hareket(yukseklik!),
          width: 26,
          margin: EdgeInsets.only(
            left: 7,
            right: 7,
          ),
          child: RotatedBox(
            quarterTurns: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 8, top: 6),
              child: Text(
                sayisi.toString(),
                style: TextStyle(
                    fontSize: 16,
                    decoration: TextDecoration.none,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        Text(
          "12.60",
          style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              decoration: TextDecoration.none),
        )
      ],
    );
  }
}