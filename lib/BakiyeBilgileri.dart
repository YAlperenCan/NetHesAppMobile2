import 'package:flutter/material.dart';

class BakiyeBilgileri extends StatefulWidget {
  const BakiyeBilgileri({Key? key}) : super(key: key);

  @override
  State<BakiyeBilgileri> createState() => _BakiyeBilgileriState();
}

class _BakiyeBilgileriState extends State<BakiyeBilgileri> {

  List<ekbilgiler> items = <ekbilgiler>[
    ekbilgiler(bankaAd: "TÜRKİYE FİNANS KATILIM BANK",bakiye: 11111111111,bankaIcon: Icons.account_balance,sirketAd: "Limak Hotel",hesapNo: 123123123,devirbakiye: 55555555),
    ekbilgiler(bankaAd: "DENİZBANK",bakiye: 222222222,bankaIcon: Icons.access_alarms_sharp,sirketAd: "Limak Hotel",hesapNo: 123123123,devirbakiye: 55555555),
    ekbilgiler(bankaAd: "ŞEKERBANK",bakiye:3333333333,bankaIcon: Icons.account_balance,sirketAd: "Limak Hotel",hesapNo: 123123123,devirbakiye: 55555555),
    ekbilgiler(bankaAd: "VAKIFBANK",bakiye: 4444444444,bankaIcon: Icons.account_balance,sirketAd: "Limak Hotel",hesapNo: 123123123,devirbakiye: 55555555),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body:Column(
         children: [
           Expanded(flex: 2,
             child: Container(
               decoration: BoxDecoration(boxShadow: [
                 BoxShadow(color:Colors.black,spreadRadius: 1)],
                   image: DecorationImage(
                       image: NetworkImage(
                           'https://cdn.discordapp.com/attachments/731126213292064871/1001441274991214592/unknown.png'),
                       fit: BoxFit.cover,
                       opacity: 0.95)),
               height: 75,
               width: 450,
               child: Row(
                 children: [
                   TextButton(
                     onPressed: (){},
                     child:
                     Padding(
                       padding: const EdgeInsets.only(top :7,left: 7,right: 10),
                       child: Icon(Icons.dashboard),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top :7,left: 7,right: 10),
                     child: Text("Kullanıcı paneli",style: TextStyle(fontSize: 20,color:Colors.white),),
                   ),
                   // kullanıcı simgesi gelice.
                 ],
               ),
             ),
           ),
           Expanded(flex: 2,
             child: Row(
               children: [
                 Container(
                     padding: EdgeInsets.only(left: 35,right: 80),
                     child: Text("Banka Adı",style: TextStyle(fontSize: 25),)),
                 Text("Bakiye",style: TextStyle(fontSize: 25),)
               ],
             ),
           ),
           Divider(
             height: 10,
             color: Colors.blue,
           ),
           Expanded(
             flex: 20 ,
             child: ListView(
               children: [
                 ExpansionPanelList(
                    dividerColor: Colors.white,
                   expansionCallback: (int index,bool isExpanded){
                     setState((){
                       items[index].isExpanded=!items[index].isExpanded;
                     });
                   },
                   children: items.map((ekbilgiler item) {
                     return ExpansionPanel(
                         headerBuilder:( BuildContext context, bool isExpanded){
                       return Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5)
                         ),


                         child: Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 5,right: 5),
                               child: Column(
                                 children: [
                                   Icon((item.bankaIcon!)),
                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(right: 40,left: 5),
                               child: Expanded(
                                 child: Column(
                                   children: [
                                     SingleChildScrollView(
                                       child: Container(
                                           child: Text(item.bankaAd!,style: TextStyle(fontSize: 13),
                                           ),width: 100,
                                       ),scrollDirection: Axis.horizontal,
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                             Expanded(
                               child: Column(
                                 children: [
                                   Container(
                                       decoration: BoxDecoration(color: Colors.blue[100],borderRadius: BorderRadius.circular(5)),
                                       child: Padding(
                                         padding: const EdgeInsets.all(3.0),
                                         child: Text(item.bakiye!.toString(),style: TextStyle(color: Colors.blue.withOpacity(0.8)),),
                                       )),
                                 ],
                               ),
                             )
                           ],
                         )
                       );
                     },
                       isExpanded: item.isExpanded,
                      body: Column(
                        children: [
                          ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.only(top: 2,left: 70),
                              child: Text("Şirket Adı : ",style: TextStyle(fontSize: 17),),
                            ),
                            title: Text(item.sirketAd!),
                          ),
                          ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.only(top: 2,left: 70),
                              child: Text("Hesap No : ",style: TextStyle(fontSize: 17),),
                            ),
                            title: Text(item.hesapNo.toString()),
                          ),
                          ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.only(top: 2,left: 70),
                              child: Text("Devir Bakiye : ",style: TextStyle(fontSize: 17),),
                            ),
                            title: Text(item.devirbakiye.toString()),
                          ),

                        ],
                      )
                     );
                   }).toList(),
                 )
               ],
             ),
           ),
         ],
       )


      ),
    );
  }
}
class ekbilgiler{
  bool isExpanded;
  final int? devirbakiye;
  final int? hesapNo;
  final String? sirketAd;
  final IconData? bankaIcon;
  final String? bankaAd;
  final int? bakiye;


  ekbilgiler({this.isExpanded:false,this.bankaAd,this.bakiye,this.bankaIcon,this.sirketAd,this.hesapNo,this.devirbakiye});

}