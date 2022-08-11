import 'package:flutter/material.dart';
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
