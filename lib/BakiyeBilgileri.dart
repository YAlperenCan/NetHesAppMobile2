import 'package:flutter/material.dart';

class BakiyeBilgileri extends StatefulWidget {
  const BakiyeBilgileri({Key? key}) : super(key: key);

  @override
  State<BakiyeBilgileri> createState() => _BakiyeBilgileriState();
}

class _BakiyeBilgileriState extends State<BakiyeBilgileri> {
  double height_ = 75;
  double width_ = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Row(
       children: [
         Center(
           child: Container(
             color: Colors.blue,
             width: 350,
             height: 50,
             child: ListTile(
               title: Text("1300000tl"),
               leading: Icon(Icons.account_balance_wallet_rounded),
             ),
           ),
         ),
         IconButton(onPressed: (){
           actions: [
             PopupMenuButton(
                 itemBuilder: (context) => [
                   PopupMenuItem(
                     child: Text("Şirket adı: bla bla"),
                     value: 1,
                   ),
                   PopupMenuItem(
                     child: Text("Hesap no: bla bla"),
                     value: 2,
                   )
                 ])
           ];
         }, icon: Icon(Icons.search))
       ],
     ),




    );
  }
}
