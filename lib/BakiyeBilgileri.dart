import 'package:flutter/material.dart';

class BakiyeBilgileri extends StatefulWidget {
  const BakiyeBilgileri({Key? key}) : super(key: key);

  @override
  State<BakiyeBilgileri> createState() => _BakiyeBilgileriState();
}

class _BakiyeBilgileriState extends State<BakiyeBilgileri> {
  List<ekbilgiler> items = <ekbilgiler>[
    ekbilgiler(
        bankaAd: "TÜRKİYE FİNANS KATILIM BANK ",
        bakiye: 243575687374,
        bankaIcon: Icons.account_balance,
        sirketAd: "Limak Hotel",
        hesapNo: 123123123,
        devirbakiye: 55555555),
    ekbilgiler(
        bankaAd: "DENİZBANK",
        bakiye: 24357689,
        bankaIcon: Icons.access_alarms_sharp,
        sirketAd: "Limak Hotel",
        hesapNo: 123123123,
        devirbakiye: 55555555),
    ekbilgiler(
        bankaAd: "ŞEKERBANK",
        bakiye: 24356789567,
        bankaIcon: Icons.account_balance,
        sirketAd: "Limak Hotel",
        hesapNo: 123123123,
        devirbakiye: 55555555),
    ekbilgiler(
        bankaAd: "VAKIFBANK",
        bakiye: 345676789,
        bankaIcon: Icons.add_chart_rounded,
        sirketAd: "Limak Hotel",
        hesapNo: 123123123,
        devirbakiye: 55555555),
    ekbilgiler(
        bankaAd: "TÜRK EKONOMİ BANKASI",
        bakiye: 632738123,
        bankaIcon: Icons.account_balance,
        sirketAd: "Limak Hotel",
        hesapNo: 123123123,
        devirbakiye: 55555555),
    ekbilgiler(
        bankaAd: "VAKIFBANK",
        bakiye: 2435769868,
        bankaIcon: Icons.abc,
        sirketAd: "Limak Hotel",
        hesapNo: 123123123,
        devirbakiye: 55555555),
    ekbilgiler(
        bankaAd: "DENİZBANK",
        bakiye: 1435475869,
        bankaIcon: Icons.account_circle_sharp,
        sirketAd: "Limak Hotel",
        hesapNo: 123123123,
        devirbakiye: 55555555),
    ekbilgiler(
        bankaAd: "VAKIFBANK",
        bakiye: 456435345,
        bankaIcon: Icons.account_balance,
        sirketAd: "Limak Hotel",
        hesapNo: 123123123,
        devirbakiye: 55555555),
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
                          child: Icon(Icons.dashboard, color: Colors.white),
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
                                            Icon((item.bankaIcon!)),
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
                                                        item.bakiye!.toString(),
                                                        style: TextStyle(
                                                            color: Colors.blue
                                                                .withOpacity(0.8)),
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
                                    item.devirbakiye.toString(),
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

class ekbilgiler {
  bool isExpanded;
  final int? devirbakiye;
  final int? hesapNo;
  final String? sirketAd;
  final IconData? bankaIcon;
  final String? bankaAd;
  final int? bakiye;

  ekbilgiler(
      {this.isExpanded: false,
        this.bankaAd,
        this.bakiye,
        this.bankaIcon,
        this.sirketAd,
        this.hesapNo,
        this.devirbakiye});
}
