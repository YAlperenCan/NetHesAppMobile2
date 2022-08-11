import 'package:flutter/material.dart';
import 'package:loginpage/CustomDrawer.dart';
import 'package:loginpage/Dasboard.dart';
class HesapHareketleri extends StatefulWidget {
  const HesapHareketleri({Key? key}) : super(key: key);

  @override
  State<HesapHareketleri> createState() => _HesapHareketleriState();
}

class _HesapHareketleriState extends State<HesapHareketleri> {

  List<ekbilgiler> items = <ekbilgiler>[
    ekbilgiler(
        bankaAd: "TÜRKİYE FİNANS KATILIM BANK ",
        bakiye: "243577374.09",
        bankaIcon: Icons.account_balance,
        hotelAd: "Limak Limra Hotel",
        hesapNo: 123123123,
        adres: "Referans nolu havale yapılmıştır",
        tarih: 151020221150,
        hesapYeri: "Kızılay Şube Hesabı"
        ,collors: Colors.green[700]),
    ekbilgiler(
        bankaAd: "DENİZBANK",
        bakiye: "24357689",
        bankaIcon: Icons.access_alarms_sharp,
        hotelAd: "Limak Hotel",
        hesapNo: 123123123,
        adres: "referans nolu havale yapılmıştır",
        tarih: 15102022,
        hesapYeri: "Kızılay Şube Hesabı"
        ,collors: Colors.red[700]),
    ekbilgiler(
        bankaAd: "ŞEKERBANK",
        bakiye: "256789567",
        bankaIcon: Icons.account_balance,
        hotelAd: "Limak Hotel",
        hesapNo: 123123123,
        adres: "referans nolu havale yapılmıştır",
        tarih: 15102022,
        hesapYeri: "Kızılay Şube Hesabı"
        ,collors: Colors.green[700]),
    ekbilgiler(
        bankaAd: "VAKIFBANK",
        bakiye: "345676789",
        bankaIcon: Icons.add_chart_rounded,
        hotelAd: "Limak Hotel",
        hesapNo: 123123123,
        adres: "referans nolu havale yapılmıştır",
        tarih: 15102022,
        hesapYeri: "Kızılay Şube Hesabı"
        ,collors: Colors.red[700]),
    ekbilgiler(
        bankaAd: "TÜRK EKONOMİ BANKASI",
        bakiye: "632738123",
        bankaIcon: Icons.account_balance,
        hotelAd: "Limak Hotel",
        hesapNo: 123123123,
        adres: "referans nolu havale yapılmıştır",
        tarih: 15102022,
        hesapYeri: "Kızılay Şube Hesabı"
        ,collors: Colors.green[700]),
    ekbilgiler(
        bankaAd: "VAKIFBANK",
        bakiye: "24369868",
        bankaIcon: Icons.abc,
        hotelAd: "Limak Hotel",
        hesapNo: 123123123,
        adres: "referans nolu havale yapılmıştır",
        tarih: 15102022,
        hesapYeri: "Kızılay Şube Hesabı"
        ,collors: Colors.red[700]),
    ekbilgiler(
        bankaAd: "DENİZBANK",
        bakiye: "14475869",
        bankaIcon: Icons.account_circle_sharp,
        hotelAd: "Limak Hotel",
        hesapNo: 123123123,
        adres: "referans nolu havale yapılmıştır",
        tarih: 15102022,
        hesapYeri: "Kızılay Şube Hesabı"
        ,collors: Colors.red[700]),
    ekbilgiler(
        bankaAd: "VAKIFBANK",
        bakiye: "435345.09",
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Hesap Hareketleri"),
      ),
      drawer: CustomDrawer(),
      body: Container(
        height: 600,
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
                                          (item.bakiyeformat()).toString(),
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
                      body: Container(padding: EdgeInsets.only(right: 140),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                          ],
                        ),
                      ));
                }).toList(),
              )
            ],
          ),
        ),
      ),);
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
  final String? bakiye;


  ekbilgiler(
      {this.isExpanded: false,
        this.bankaAd,
        this.bakiye,
        this.bankaIcon,
        this.hotelAd,
        this.hesapNo,
        this.adres,this.tarih,this.hesapYeri,this.collors});
  String bakiyeformat(){
    bakiye!;
    String priceInText = "";
    int counter = 0;
    for(int i = (bakiye!.length - 1);  i >= 0; i--){
      counter++;
      String str = bakiye![i];
      if(bakiye![i]=="."){
        priceInText = "$str$priceInText";
      }
      else if((counter % 3) != 0 && i !=0){
        priceInText = "$str$priceInText";
      }else if(i == 0 ){
        priceInText = "$str$priceInText";

      }else{
        priceInText = ",$str$priceInText";
      }
    }
    return priceInText.trim();
  }
}
