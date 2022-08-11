import 'package:flutter/material.dart';

List<ekbilgiler> items = <ekbilgiler>[
  ekbilgiler(
      bankaAd: "TÜRKİYE FİNANS KATILIM BANK ",
      bakiye: "243575687374",
      bankaIcon: Icons.account_balance,
      sirketAd: "Limak Hotel",
      hesapNo: 123123123,
      devirbakiye: "55555555"),
  ekbilgiler(
      bankaAd: "DENİZBANK",
      bakiye: "24357689",
      bankaIcon: Icons.access_alarms_sharp,
      sirketAd: "Limak Hotel",
      hesapNo: 123123123,
      devirbakiye: "55555555"),
  ekbilgiler(
      bankaAd: "ŞEKERBANK",
      bakiye: "24356789567",
      bankaIcon: Icons.account_balance,
      sirketAd: "Limak Hotel",
      hesapNo: 123123123,
      devirbakiye: "55555555"),
  ekbilgiler(
      bankaAd: "VAKIFBANK",
      bakiye: "345676789",
      bankaIcon: Icons.add_chart_rounded,
      sirketAd: "Limak Hotel",
      hesapNo: 123123123,
      devirbakiye: "55555555"),
  ekbilgiler(
      bankaAd: "TÜRK EKONOMİ BANKASI",
      bakiye: "632738123",
      bankaIcon: Icons.account_balance,
      sirketAd: "Limak Hotel",
      hesapNo: 123123123,
      devirbakiye: "55555555"),
  ekbilgiler(
      bankaAd: "VAKIFBANK",
      bakiye: "2435769868",
      bankaIcon: Icons.abc,
      sirketAd: "Limak Hotel",
      hesapNo: 123123123,
      devirbakiye: "55555555"),
  ekbilgiler(
      bankaAd: "DENİZBANK",
      bakiye: "1435475869",
      bankaIcon: Icons.account_circle_sharp,
      sirketAd: "Limak Hotel",
      hesapNo: 123123123,
      devirbakiye: "55555555"),
  ekbilgiler(
      bankaAd: "VAKIFBANK",
      bakiye: "456435345",
      bankaIcon: Icons.account_balance,
      sirketAd: "Limak Hotel",
      hesapNo: 123123123,
      devirbakiye: "55555555"),
];class ekbilgiler {
  bool isExpanded;
  final String? devirbakiye;
  final int? hesapNo;
  final String? sirketAd;
  final IconData? bankaIcon;
  final String? bankaAd;
  final String? bakiye;

  ekbilgiler(
      {this.isExpanded: false,
        this.bankaAd,
        this.bakiye,
        this.bankaIcon,
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