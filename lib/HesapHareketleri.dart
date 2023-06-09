import 'package:flutter/material.dart';
import 'package:loginpage/deneme/DenemeEskiCustomDrawer.dart';
import 'EkbilgilerHesap.dart';

class HesapHareketleri extends StatefulWidget {
  const HesapHareketleri({Key? key}) : super(key: key);

  @override
  State<HesapHareketleri> createState() => _HesapHareketleriState();
}

class _HesapHareketleriState extends State<HesapHareketleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Hesap Hareketleri"),
        centerTitle: true,
      ),
      //drawer: CustomDrawer(),
      body: Container(
        color: Colors.grey[200],
        height: 650,
        width: 600,
        child: Expanded(
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
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: Column(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          width: 40,
                                          height: 40,
                                          child:
                                              Image(image: item.bankaImage!)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 10, left: 5),
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
                                  flex: 14,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Icon(
                                          item.okisaret,
                                          color: item.collors,
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 0),
                                        child: Text(
                                          (item.bakiyeformat()).toString(),
                                          style: TextStyle(color: item.collors),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          " TRY",
                                          style: TextStyle(color: item.collors),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  flex: 8,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                          child: Text(
                                        item.saat!.toString(),
                                        style: TextStyle(fontSize: 12),
                                      )),
                                    ],
                                  ),
                                )
                              ],
                            ));
                      },
                      isExpanded: item.isExpanded,
                      body: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                              child: Text(item.hotelAd!,
                                  style: TextStyle(fontSize: 14)),
                            ),
                            SizedBox(
                              height: 30,
                              child: Text(
                                item.hesapNo.toString(),
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              child: Text(
                                item.adres.toString(),
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              child: Text(
                                item.hesapYeri.toString(),
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              child: Text(
                                item.tarih.toString(),
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ));
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
