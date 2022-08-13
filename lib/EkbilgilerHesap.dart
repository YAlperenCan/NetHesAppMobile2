import 'package:flutter/material.dart';
List<ekbilgiler> items = <ekbilgiler>[
  ekbilgiler(
      bankaAd: "TÜRKİYE FİNANS KATILIM BANK ",
      bakiye: "577374.09",
      bankaImage: AssetImage('assets/bank-logos/tkf.png'),
      hotelAd: "Limak Limra Hotel",
      hesapNo: 123123123,
      adres: "Referans nolu havale yapılmıştır",
      tarih: 15102022,
      hesapYeri: "Kızılay Şube Hesabı"
      ,collors: Colors.green[700],
       okisaret: Icons.add),
  ekbilgiler(
      bankaAd: "DENİZBANK",
      bakiye: "257689",
      bankaImage: AssetImage('assets/bank-logos/denizbank.jpeg'),
      hotelAd: "Limak Hotel",
      hesapNo: 123123123,
      adres: "referans nolu havale yapılmıştır",
      tarih: 15102022,
      hesapYeri: "Kızılay Şube Hesabı"
      ,collors: Colors.red[700],
      okisaret: Icons.remove),
  ekbilgiler(
      bankaAd: "ŞEKERBANK",
      bakiye: "789567",
      bankaImage: AssetImage('assets/bank-logos/sekerbank.jpeg'),
      hotelAd: "Limak Hotel",
      hesapNo: 123123123,
      adres: "referans nolu havale yapılmıştır",
      tarih: 15102022,
      hesapYeri: "Kızılay Şube Hesabı"
      ,collors: Colors.green[700],
      okisaret: Icons.add),
  ekbilgiler(
      bankaAd: "VAKIFBANK",
      bakiye: "3476789",
      bankaImage: AssetImage('assets/bank-logos/vakıfbank.png'),      hotelAd: "Limak Hotel",
      hesapNo: 123123123,
      adres: "referans nolu havale yapılmıştır",
      tarih: 15102022,
      hesapYeri: "Kızılay Şube Hesabı"
      ,collors: Colors.red[700],
      okisaret: Icons.remove),
  ekbilgiler(
      bankaAd: "TÜRK EKONOMİ BANKASI",
      bakiye: "6328123",
      bankaImage: AssetImage('assets/bank-logos/teb.jpeg'),      hotelAd: "Limak Hotel",
      hesapNo: 123123123,
      adres: "referans nolu havale yapılmıştır",
      tarih: 15102022,
      hesapYeri: "Kızılay Şube Hesabı"
      ,collors: Colors.green[700],
okisaret: Icons.add),
  ekbilgiler(
      bankaAd: "VAKIFBANK",
      bakiye: "249868",
      bankaImage: AssetImage('assets/bank-logos/vakıfbank.png'),      hotelAd: "Limak Hotel",
      hesapNo: 123123123,
      adres: "referans nolu havale yapılmıştır",
      tarih: 15102022,
      hesapYeri: "Kızılay Şube Hesabı"
      ,collors: Colors.red[700],
      okisaret: Icons.remove),
  ekbilgiler(
      bankaAd: "DENİZBANK",
      bakiye: "147869.09",
      bankaImage: AssetImage('assets/bank-logos/denizbank.jpeg'),      hotelAd: "Limak Hotel",
      hesapNo: 123123123,
      adres: "referans nolu havale yapılmıştır",
      tarih: 15102022,
      hesapYeri: "Kızılay Şube Hesabı"
      ,collors: Colors.red[700],
      okisaret: Icons.remove),
  ekbilgiler(
      bankaAd: "VAKIFBANK",
      bakiye: "435345.09",
      bankaImage: AssetImage('assets/bank-logos/vakıfbank.png'),      hotelAd: "Limak Hotel",
      hesapNo: 123123123,
      adres: "referans nolu havale yapılmıştır",
      tarih: 15102022,
      hesapYeri: "Kızılay Şube Hesabı"
      ,collors: Colors.green[700],
okisaret: Icons.add),
];
class ekbilgiler {
  bool isExpanded;
  final String? adres;
  final String? hesapYeri;
  final int? tarih;
  final IconData? okisaret;
  final Color? collors;
  final int? hesapNo;
  final String? hotelAd;
  final AssetImage? bankaImage;
  final String? bankaAd;
  final String? bakiye;



  ekbilgiler(
      {this.isExpanded: false,
        this.bankaAd,
        this.bakiye,
        this.bankaImage,
        this.hotelAd,
        this.hesapNo,
        this.adres,this.tarih,this.hesapYeri,this.collors,this.okisaret});
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
