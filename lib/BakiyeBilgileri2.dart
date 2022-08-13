import 'package:flutter/material.dart';
import 'EkbilgilerBakiye.dart';

class BakiyeBilgileri2 extends StatefulWidget {
  const BakiyeBilgileri2({Key? key}) : super(key: key);

  @override

  State<BakiyeBilgileri2> createState() => _BakiyeBilgileri2State();
}
    List<Image> banka=<Image>[
      Image.asset('assets/bank-logos/tkf.png'),
    ];

    Map<String, double> Money = {
    "Girdi_1": 250,
    "Girdi_2": 120,
    "Girdi_3": 45,
    "Girdi_4": 150,
    "Girdi_5":70
    };

class _BakiyeBilgileri2State extends State<BakiyeBilgileri2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bakiye Bilgileri"),
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          chartmethodgir(Money["Girdi_1"],Money["Girdi_1"]),
                          chartmethodgir(Money["Girdi_2"],Money["Girdi_2"]),
                          chartmethodgir(Money["Girdi_3"],Money["Girdi_3"]),
                          chartmethodgir(Money["Girdi_1"],Money["Girdi_1"]),
                          chartmethodgir(Money["Girdi_2"],Money["Girdi_2"]),
                          chartmethodgir(Money["Girdi_3"],Money["Girdi_3"]),
                          chartmethodgir(Money["Girdi_4"],Money["Girdi_4"]),
                          chartmethodgir(Money["Girdi_3"],Money["Girdi_3"]),
                          chartmethodgir(Money["Girdi_4"],Money["Girdi_4"]),
                          chartmethodgir(Money["Girdi_3"],Money["Girdi_3"]),
                          chartmethodgir(Money["Girdi_4"],Money["Girdi_4"]),
                          chartmethodgir(Money["Girdi_5"],Money["Girdi_5"]),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.black,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

Padding chartmethodgir(@required double? yukseklik, @required double? sayisi) {
  double hareket(double tutar) {
    return ((tutar) * 200) / 300;
  }

  return Padding(
    padding: const EdgeInsets.only(bottom: 10,left: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          height: hareket(yukseklik!),
          width: 35,
          margin: EdgeInsets.only(
            left: 7,
            right: 7,
          ),
        ),
        ],
    ),
  );
}

