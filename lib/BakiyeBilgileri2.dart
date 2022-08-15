import 'package:flutter/material.dart';
import 'package:loginpage/CustomDrawer.dart';
import 'EkbilgilerBakiye.dart';

class BakiyeBilgileri2 extends StatefulWidget {
  const BakiyeBilgileri2({Key? key}) : super(key: key);

  @override

  State<BakiyeBilgileri2> createState() => _BakiyeBilgileri2State();
}
List<Color> renk=<Color>[
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.deepPurpleAccent,
  Colors.deepOrangeAccent
];
List<AssetImage> banka=<AssetImage>[
  AssetImage('assets/bank-logos/tkf.png'),
  AssetImage('assets/bank-logos/denizbank.jpeg'),
  AssetImage('assets/bank-logos/sekerbank.jpeg'),
  AssetImage('assets/bank-logos/teb.jpeg'),
  AssetImage('assets/bank-logos/tkf.png'),
  AssetImage('assets/bank-logos/tkf.png'),
  AssetImage('assets/bank-logos/tkf.png'),


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
          centerTitle: true,
        ),
        //drawer: CustomDrawer(),
        body: Container(
          color: Colors.blue[100],
          child: Column(
            children: [
              Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.white,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          chartmethodgir(Money["Girdi_1"],Money["Girdi_1"],banka[0],renk[1]),
                          chartmethodgir(Money["Girdi_2"],Money["Girdi_2"],banka[1],renk[2]),
                          chartmethodgir(Money["Girdi_3"],Money["Girdi_3"],banka[2],renk[3]),
                          chartmethodgir(Money["Girdi_1"],Money["Girdi_1"],banka[3],renk[4]),
                          chartmethodgir(Money["Girdi_2"],Money["Girdi_2"],banka[4],renk[0]),
                          chartmethodgir(Money["Girdi_3"],Money["Girdi_3"],banka[5],renk[2]),
                          chartmethodgir(Money["Girdi_4"],Money["Girdi_4"],banka[0],renk[3]),
                          chartmethodgir(Money["Girdi_3"],Money["Girdi_3"],banka[0],renk[0]),
                          chartmethodgir(Money["Girdi_4"],Money["Girdi_4"],banka[0],renk[1]),
                          chartmethodgir(Money["Girdi_3"],Money["Girdi_3"],banka[0],renk[1]),
                          chartmethodgir(Money["Girdi_4"],Money["Girdi_4"],banka[0],renk[1]),
                          chartmethodgir(Money["Girdi_5"],Money["Girdi_5"],banka[0],renk[1]),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 7,
                child: ListView(
                  children: [
                    ExpansionPanelList(
                      animationDuration: Duration(seconds: 1),
                      expandedHeaderPadding: EdgeInsets.only(top: 0, bottom: 0),
                      dividerColor: Colors.blue[100],
                      expansionCallback: (int index, bool isExpanded) {
                        setState(() {
                          items[index].isExpanded = !items[index].isExpanded;
                        });
                      },
                      children: items.map((ekbilgiler item) {
                        return ExpansionPanel(
                            headerBuilder: (BuildContext context, bool isExpanded) {
                              return Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, right: 5),
                                        child: Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(20)
                                                ),
                                                width:40,
                                                height:40,child: Image(image: item.bankaImage!)),
                                          ],
                                        ),
                                      ),
                                      Expanded(flex:3,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 55, left: 5),
                                          child: Expanded(
                                            child: Column(
                                              children: [
                                                SingleChildScrollView(
                                                  child: Container(
                                                    child: Text(
                                                      item.bankaAd!,
                                                      style: TextStyle(fontSize: 13),
                                                    ),
                                                    width: 100,
                                                  ),
                                                  scrollDirection: Axis.horizontal,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                          color: Colors.blue[100],
                                          borderRadius:
                                          BorderRadius.circular(5)),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Text(
                                                item.bakiyeformat().toString(),
                                                style: TextStyle(
                                                    color: Colors.blue[800]
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(" TRY",style: TextStyle(color: Colors.blue[800]),),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ));
                            },
                            isExpanded: item.isExpanded,
                            body: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 67,top: 5),
                                      child: Text(
                                        "Şirket Adı : ",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 136,
                                    ),
                                    Text(item.sirketAd!,
                                        style: TextStyle(fontSize: 14)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 68,top: 5),
                                      child: Text(
                                        "Hesap No : ",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 136,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Text(
                                        item.hesapNo.toString(),
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 67,top: 5,bottom: 15),
                                      child: Text(
                                        "Devir Bakiye :",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 129,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 8),
                                      child: Text(
                                        item.devirbakiyeformat().toString(),
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ));
                      }).toList(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Padding chartmethodgir(@required double? yukseklik, @required double? sayisi,@required AssetImage bankaresmi,@required Color renk) {
  double hareket(double tutar) {
    return ((tutar) * 200) / 300;
  }

  return Padding(
    padding: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: renk,
          ),
          height: hareket(yukseklik!),
          width: 40,
          margin: EdgeInsets.only(
            left: 7,
            right: 7,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(20)),
            width: 40,
            height: 40,
            child:Image(image: bankaresmi),


        ),
        ],
    ),
  );
}

