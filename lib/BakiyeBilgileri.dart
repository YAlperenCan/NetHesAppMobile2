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
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 40, right: 150),
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
              Divider(
                height: 0.1,
                endIndent: 50,
                indent: 30,
                color: Colors.blue[100],
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
                                SizedBox(
                                  height: 30,
                                  child: ListTile(
                                    leading: Padding(
                                      padding: const EdgeInsets.only(top:4,left: 23),
                                      child: Text(
                                        "Şirket Adı : ",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    title: Text(item.sirketAd!,
                                        style: TextStyle(fontSize: 14)),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  child: ListTile(
                                    leading: Padding(
                                      padding: const EdgeInsets.only(top:4,left: 23),
                                      child: Text(
                                        "Hesap No : ",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    title: Text(
                                      item.hesapNo.toString(),
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                ),
                                ListTile(
                                  leading: Padding(
                                    padding: const EdgeInsets.only(top:4,left: 23),
                                    child: Text(
                                      "Devir Bakiye :",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  title: Text(
                                    item.devirbakiyeformat().toString(),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ],
                            ));
                      }).toList(),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}


