import 'package:flutter/material.dart';

class Sonhareketler2 extends StatefulWidget {
  const Sonhareketler2({Key? key}) : super(key: key);

  @override
  State<Sonhareketler2> createState() => _Sonhareketler2State();
}

class _Sonhareketler2State extends State<Sonhareketler2> {
  @override
  Map<String,double> Money={
  "Girdi_1": 100,"Girdi_2": 120,"Girdi_3":45,"Girdi_4":150
  };

  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 29,right: 29,bottom: 50,top: 50),
              child: Container(
                color: Colors.white10,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: Money["Girdi_2"],
                          width: 30,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 7,right: 7,),
                          child: Text(Money["Girdi_2"].toString(),style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
                        ),
                        Text("12.60",style: TextStyle(fontSize: 12,color: Colors.black,decoration: TextDecoration.none),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: Money["Girdi_1"],
                          width: 30,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 7,right: 7,),
                          child: Text(Money["Girdi_1"].toString(),style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
                        ),
                        Text("12.60",style: TextStyle(fontSize: 12,color: Colors.black,decoration: TextDecoration.none),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: Money["Girdi_3"],
                          width: 30,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 7,right: 7,),
                          child: Text(Money["Girdi_3"].toString(),style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
                        ),
                        Text("12.60",style: TextStyle(fontSize: 12,color: Colors.black,decoration: TextDecoration.none),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: Money["Girdi_4"],
                          width: 30,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 7,right: 7,),
                          child: Text(Money["Girdi_4"].toString(),style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
                        ),
                        Text("12.60",style: TextStyle(fontSize: 12,color: Colors.black,decoration: TextDecoration.none),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: Money["Girdi_2"],
                          width: 30,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 7,right: 7,),
                          child: Text(Money["Girdi_2"].toString(),style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
                        ),
                        Text("12.60",style: TextStyle(fontSize: 12,color: Colors.black,decoration: TextDecoration.none),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: Money["Girdi_1"],
                          width: 30,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 7,right: 7,),
                          child: Text(Money["Girdi_1"].toString(),style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
                        ),
                        Text("12.60",style: TextStyle(fontSize: 12,color: Colors.black,decoration: TextDecoration.none),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: Money["Girdi_3"],
                          width: 30,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 7,right: 7,),
                          child: Text(Money["Girdi_3"].toString(),style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
                        ),
                        Text("12.60",style: TextStyle(fontSize: 12,color: Colors.black,decoration: TextDecoration.none),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: Money["Girdi_4"],
                          width: 30,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 7,right: 7,),
                          child: Text(Money["Girdi_4"].toString(),style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
                        ),
                        Text("12.60",style: TextStyle(fontSize: 12,color: Colors.black,decoration: TextDecoration.none),)
                      ],
                    ),
                  ],
                ),
              ),),
            Padding(
              padding: const EdgeInsets.only(left: 29,right: 29,bottom:50),
              child: Container(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: Money["Girdi_2"],
                          width: 30,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 7,right: 7,),
                          child: Text(Money["Girdi_2"].toString(),style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
                        ),
                        Text("12.60",style: TextStyle(fontSize: 12,color: Colors.black,decoration: TextDecoration.none),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: Money["Girdi_1"],
                          width: 30,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 7,right: 7,),
                          child: Text(Money["Girdi_1"].toString(),style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
                        ),
                        Text("12.60",style: TextStyle(fontSize: 12,color: Colors.black,decoration: TextDecoration.none),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: Money["Girdi_3"],
                          width: 30,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 7,right: 7,),
                          child: Text(Money["Girdi_3"].toString(),style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
                        ),
                        Text("12.60",style: TextStyle(fontSize: 12,color: Colors.black,decoration: TextDecoration.none),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: Money["Girdi_4"],
                          width: 30,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 7,right: 7,),
                          child: Text(Money["Girdi_4"].toString(),style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
                        ),
                        Text("12.60",style: TextStyle(fontSize: 12,color: Colors.black,decoration: TextDecoration.none),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: Money["Girdi_2"],
                          width: 30,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 7,right: 7,),
                          child: Text(Money["Girdi_2"].toString(),style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
                        ),
                        Text("12.60",style: TextStyle(fontSize: 12,color: Colors.black,decoration: TextDecoration.none),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: Money["Girdi_1"],
                          width: 30,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 7,right: 7,),
                          child: Text(Money["Girdi_1"].toString(),style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
                        ),
                        Text("12.60",style: TextStyle(fontSize: 12,color: Colors.black,decoration: TextDecoration.none),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: Money["Girdi_3"],
                          width: 30,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 7,right: 7,),
                          child: Text(Money["Girdi_3"].toString(),style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
                        ),
                        Text("12.60",style: TextStyle(fontSize: 12,color: Colors.black,decoration: TextDecoration.none),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: Money["Girdi_4"],
                          width: 30,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 7,right: 7,),
                          child: Text(Money["Girdi_4"].toString(),style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
                        ),
                        Text("12.60",style: TextStyle(fontSize: 12,color: Colors.black,decoration: TextDecoration.none),)
                      ],
                    ),
                  ],
                ),
              ),),
            Column(
              children: [
                Container(
                  child: ListTile(
                    leading: Icon(Icons.add),
                    title: Text("asfgydhajskd"),
                  ),
                )
              ],
            )
          ],
        ),
      ),

    );
  }
}
