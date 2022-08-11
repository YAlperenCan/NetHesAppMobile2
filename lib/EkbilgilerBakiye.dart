import 'package:flutter/material.dart';

List<ekbilgiler> items = <ekbilgiler>[
  ekbilgiler(
      bankaAd: "TÜRKİYE FİNANS KATILIM BANK ",
      bakiye: "243687374",
      bankaImage: AssetImage('assets/bank-logos/vakıfbank.png'),
      sirketAd: "Limak Hotel",
      hesapNo: 123123123,
      devirbakiye: "55555555"),
  ekbilgiler(
      bankaAd: "DENİZBANK",
      bakiye: "24357689",
      bankaImage: AssetImage('assets/bank-logos/denizbank.jpeg'),
      sirketAd: "Limak Hotel",
      hesapNo: 123123123,
      devirbakiye: "55555555"),
  ekbilgiler(
      bankaAd: "ŞEKERBANK",
      bakiye: "243589567",
      bankaImage: AssetImage('assets/bank-logos/vakıfbank.png'),
      sirketAd: "Limak Hotel",
      hesapNo: 123123123,
      devirbakiye: "55555555"),
  ekbilgiler(
      bankaAd: "VAKIFBANK",
      bakiye: "34576789",
      bankaImage: AssetImage('assets/bank-logos/tkf.png'),
      sirketAd: "Limak Hotel",
      hesapNo: 123123123,
      devirbakiye: "55555555"),
  ekbilgiler(
      bankaAd: "TÜRK EKONOMİ BANKASI",
      bakiye: "632738123",
      bankaImage: AssetImage('assets/bank-logos/denizbank.jpeg'),
      sirketAd: "Limak Hotel",
      hesapNo: 123123123,
      devirbakiye: "55555555"),
  ekbilgiler(
      bankaAd: "VAKIFBANK",
      bakiye: "243576868",
      bankaImage: AssetImage('assets/bank-logos/sekerbank.jpeg'),
      sirketAd: "Limak Hotel",
      hesapNo: 123123123,
      devirbakiye: "55555555"),
  ekbilgiler(
      bankaAd: "DENİZBANK",
      bakiye: "14375869",
      bankaImage: AssetImage('assets/bank-logos/vakıfbank.png'),
      sirketAd: "Limak Hotel",
      hesapNo: 123123123,
      devirbakiye: "55555555"),
  ekbilgiler(
      bankaAd: "VAKIFBANK",
      bakiye: "4564345",
      bankaImage: AssetImage('assets/bank-logos/teb.jpeg'),
      sirketAd: "Limak Hotel",
      hesapNo: 123123123,
      devirbakiye: "55555555"),
];class ekbilgiler {
  bool isExpanded;
  final String? devirbakiye;
  final int? hesapNo;
  final String? sirketAd;
  final AssetImage? bankaImage;
  final String? bankaAd;
  final String? bakiye;

  ekbilgiler(
      {this.isExpanded: false,
        this.bankaAd,
        this.bakiye,
        this.bankaImage,
        this.sirketAd,
        this.hesapNo,
        this.devirbakiye});

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
  String devirbakiyeformat(){
    devirbakiye!;
    String priceInText = "";
    int counter = 0;
    for(int i = (devirbakiye!.length - 1);  i >= 0; i--){
      counter++;
      String str = devirbakiye![i];
      if(devirbakiye![i]=="."){
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