import 'package:flutter/material.dart';
class HesapHareketleri extends StatefulWidget {
  const HesapHareketleri({Key? key}) : super(key: key);

  @override
  State<HesapHareketleri> createState() => _HesapHareketleriState();
}

class _HesapHareketleriState extends State<HesapHareketleri> {
  List<ekbilgiler> items = <ekbilgiler>[
    ekbilgiler(
        bankaAd: "TÜRKİYE FİNANS KATILIM BANK ",
        bakiye: 243577374,
        bankaIcon: Icons.account_balance,
        hotelAd: "Limak Limra Hotel",
        hesapNo: 123123123,
        adres: "referans nolu havale yapılmıştır",
        tarih: 151020221150,
        hesapYeri: "Kızılay Şube Hesabı"
        ,collors: Colors.green[700]),
    ekbilgiler(
        bankaAd: "DENİZBANK",
        bakiye: 24357689,
        bankaIcon: Icons.access_alarms_sharp,
        hotelAd: "Limak Hotel",
        hesapNo: 123123123,
        adres: "referans nolu havale yapılmıştır",
        tarih: 15102022,
        hesapYeri: "Kızılay Şube Hesabı"
        ,collors: Colors.red[700]),
    ekbilgiler(
        bankaAd: "ŞEKERBANK",
        bakiye: 256789567,
        bankaIcon: Icons.account_balance,
        hotelAd: "Limak Hotel",
        hesapNo: 123123123,
        adres: "referans nolu havale yapılmıştır",
        tarih: 15102022,
        hesapYeri: "Kızılay Şube Hesabı"
        ,collors: Colors.green[700]),
    ekbilgiler(
        bankaAd: "VAKIFBANK",
        bakiye: 345676789,
        bankaIcon: Icons.add_chart_rounded,
        hotelAd: "Limak Hotel",
        hesapNo: 123123123,
        adres: "referans nolu havale yapılmıştır",
        tarih: 15102022,
        hesapYeri: "Kızılay Şube Hesabı"
        ,collors: Colors.red[700]),
    ekbilgiler(
        bankaAd: "TÜRK EKONOMİ BANKASI",
        bakiye: 632738123,
        bankaIcon: Icons.account_balance,
        hotelAd: "Limak Hotel",
        hesapNo: 123123123,
        adres: "referans nolu havale yapılmıştır",
        tarih: 15102022,
        hesapYeri: "Kızılay Şube Hesabı"
        ,collors: Colors.green[700]),
    ekbilgiler(
        bankaAd: "VAKIFBANK",
        bakiye: 24369868,
        bankaIcon: Icons.abc,
        hotelAd: "Limak Hotel",
        hesapNo: 123123123,
        adres: "referans nolu havale yapılmıştır",
        tarih: 15102022,
        hesapYeri: "Kızılay Şube Hesabı"
        ,collors: Colors.red[700]),
    ekbilgiler(
        bankaAd: "DENİZBANK",
        bakiye: 14475869,
        bankaIcon: Icons.account_circle_sharp,
        hotelAd: "Limak Hotel",
        hesapNo: 123123123,
        adres: "referans nolu havale yapılmıştır",
        tarih: 15102022,
        hesapYeri: "Kızılay Şube Hesabı"
        ,collors: Colors.red[700]),
    ekbilgiler(
        bankaAd: "VAKIFBANK",
        bakiye: 456435345,
        bankaIcon: Icons.account_balance,
        hotelAd: "Limak Hotel",
        hesapNo: 123123123,
        adres: "referans nolu havale yapılmıştır",
        tarih: 15102022,
        hesapYeri: "Kızılay Şube Hesabı"
        ,collors: Colors.green[700]),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 1)],
                  ),
                  height: 75,
                  width: 450,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Padding(
                          padding:
                          const EdgeInsets.only(top: 7, left: 7, right: 10),
                          child: Icon(Icons.dashboard, color: Colors.blue[100]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 7, left: 7, right: 10),
                        child: Text(
                          "Bakiye Bilgileri",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      // kullanıcı simgesi gelice.
                    ],
                  ),
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
                                            Icon((item.bankaIcon!)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, left: 5),
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
                                            Container(
                                              padding: EdgeInsets.only(left: 0),
                                              child: Text(
                                                (item.bakiye).toString(),
                                                style: TextStyle(
                                                    color: item.collors
                                                        ),
                                              ),
                                            ),

                                          ],

                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(child: Text(item.tarih!.toString(),style: TextStyle(fontSize: 12),)),
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
                                  child: Text(item.hotelAd!,
                                      style: TextStyle(fontSize: 14)),
                                ),
                                SizedBox(
                                  height: 30,
                                  child:
                                    Text(
                                      item.hesapNo.toString(),
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                Text(
                                  item.adres.toString(),
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  item.hesapYeri.toString(),
                                  style: TextStyle(fontSize: 14),
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

class ekbilgiler {
  bool isExpanded;
  final String? adres;
  final String? hesapYeri;
  final int? tarih;
  final Color? collors;
  final int? hesapNo;
  final String? hotelAd;
  final IconData? bankaIcon;
  final String? bankaAd;
  final int? bakiye;


  ekbilgiler(
      {this.isExpanded: false,
        this.bankaAd,
        this.bakiye,
        this.bankaIcon,
        this.hotelAd,
        this.hesapNo,
        this.adres,this.tarih,this.hesapYeri,this.collors});
}
