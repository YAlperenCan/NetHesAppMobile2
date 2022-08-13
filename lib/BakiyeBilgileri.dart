import 'package:flutter/material.dart';
import 'package:loginpage/Dasboard.dart';

import 'CustomDrawer.dart';
import 'EkbilgilerBakiye.dart';

class BakiyeBilgileri extends StatefulWidget {
  const BakiyeBilgileri({Key? key}) : super(key: key);

  @override
  State<BakiyeBilgileri> createState() => _BakiyeBilgileriState();
}

class _BakiyeBilgileriState extends State<BakiyeBilgileri> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bakiye Bilgileri"),
        ),
          drawer: CustomDrawer(),
          body: Container(
            color: Colors.blue[100],
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: 52, right: 140),
                          height: 20,
                          child: Text(
                            "Banka Adı",
                            style: TextStyle(fontSize: 18),
                          )),
                      Container(
                        child: Text(
                          "Bakiye",
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 20,
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
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 40, left: 5),
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
                                        Expanded(
                                          child: Column(
                                             crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 40),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.blue[100],
                                                        borderRadius:
                                                        BorderRadius.circular(5)),
                                                    child: Padding(
                                                      padding:
                                                      const EdgeInsets.all(5.0),
                                                      child: Container(
                                                        child: Text(
                                                          item.bakiyeformat().toString(),
                                                          style: TextStyle(
                                                              color: Colors.blue[800]
                                                                  ),
                                                        ),
                                                      ),
                                                    )),
                                              ),
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
                                        padding: const EdgeInsets.only(left: 57,top: 5),
                                        child: Text(
                                    "Şirket Adı : ",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                      ),
                                      SizedBox(
                                        width: 145,
                                      ),
                                      Text(item.sirketAd!,
                                          style: TextStyle(fontSize: 14)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 57,top: 5),
                                        child: Text(
                                        "Hesap No : ",
                                        style: TextStyle(fontSize: 14),
                                    ),
                                      ),
                                      SizedBox(
                                        width: 148,
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
                                        padding: const EdgeInsets.only(left: 57,top: 5,bottom: 15),
                                        child: Text(
                                          "Devir Bakiye :",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 140,
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
          )),
    );
  }
}


