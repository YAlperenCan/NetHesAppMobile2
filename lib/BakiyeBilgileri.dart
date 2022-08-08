import 'package:flutter/material.dart';

class BakiyeBilgileri extends StatefulWidget {
  const BakiyeBilgileri({Key? key}) : super(key: key);

  @override
  State<BakiyeBilgileri> createState() => _BakiyeBilgileriState();
}

class _BakiyeBilgileriState extends State<BakiyeBilgileri> {

  List<ekbilgiler> items = <ekbilgiler>[
    ekbilgiler(head: "akbank",body: "hesap no: 123143234",body2: "bakiye :123123123"),
    ekbilgiler(head: "A",body: "ek bilgi23"),
    ekbilgiler(head: "akbank3",body: "ek bilgi4"),
    ekbilgiler(head: "akbank4",body: "ek bilgi1"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:ListView(
       children: [
         ExpansionPanelList(
           expansionCallback: (int index,bool isExpanded){
             setState((){
               items[index].isExpanded=!items[index].isExpanded;
             });
           },
           children: items.map((ekbilgiler item) {
             return ExpansionPanel(
                 headerBuilder:( BuildContext context, bool isExpanded){
               return Container(
                 child: ListTile(
                   leading:Icon(Icons.add) ,
                   title:Text(item.head!),
                 ),
               );
             },
               isExpanded: item.isExpanded,
              body: Column(
                children: [
                  Text(item.body!),
                  Text(item.body2)
                ],
              )
             );
           }).toList(),
         )
       ],
     )


    );
  }
}
class ekbilgiler{
  bool isExpanded;
  final String body2;
  final String? head;
  final String? body;

  ekbilgiler({this.isExpanded:false,this.head,this.body,this.body2});

}