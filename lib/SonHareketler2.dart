import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Sonhareketler2 extends StatefulWidget {
  const Sonhareketler2({Key? key}) : super(key: key);

  @override
  State<Sonhareketler2> createState() => _Sonhareketler2State();
}

class _Sonhareketler2State extends State<Sonhareketler2> {
  @override
  Map<String, double> Money = {
    "Girdi_1": 250,
    "Girdi_2": 120,
    "Girdi_3": 45,
    "Girdi_4": 150,
    "Girdi_5":70
  };
  Map<String, double> Money2 = {
    "çıktı_1": 200,
    "çıktı_2": 120,
    "çıktı_3": 80,
    "çıktı_4": 130,
    "çıktı_5":200
  };
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn.discordapp.com/attachments/731126213292064871/1001441274991214592/unknown.png'),
                  fit: BoxFit.cover,
                  opacity: 0.95)),
          child: Column(
            children: [
              Container(
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
                        padding: const EdgeInsets.only(top :19,left: 7,right: 10),
                        child: Icon(Icons.dashboard),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top :19,left: 7,right: 10),
                      child: Text("Son Hareketler ",style: TextStyle(fontSize: 20,color:Colors.white),),
                    ),
     // kullanıcı simgesi gelice.
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:200,top: 15),
                child: Text("GİRİŞ HAREKETLERİ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              Padding(
                padding: const EdgeInsets.only(),
                child: Container(
                  decoration: BoxDecoration( image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn.discordapp.com/attachments/731126213292064871/1006821181208395836/background-2481466__340.webp'),
                      fit: BoxFit.cover,
                      opacity: 0.10),color: Colors.white,
    borderRadius: BorderRadius.circular(10),boxShadow: [
                        BoxShadow(color:Colors.black,spreadRadius: 1)
                      ]),
                  height: 230,
                  width: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          chartmethodgir(Money["Girdi_1"],Money["Girdi_1"]),
                          chartmethodgir(Money["Girdi_2"],Money["Girdi_2"]),
                          chartmethodgir(Money["Girdi_3"],Money["Girdi_3"]),
                          chartmethodgir(Money["Girdi_4"],Money["Girdi_4"]),
                          chartmethodgir(Money["Girdi_5"],Money["Girdi_5"]),
                          chartmethodgir(Money["Girdi_1"],Money["Girdi_1"]),
                          chartmethodgir(Money["Girdi_2"],Money["Girdi_2"]),
                          chartmethodgir(Money["Girdi_3"],Money["Girdi_3"]),
                          chartmethodgir(Money["Girdi_4"],Money["Girdi_4"]),
                          chartmethodgir(Money["Girdi_5"],Money["Girdi_5"]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:200,top: 20),
                child: Text("ÇIKIŞ HAREKETLERİ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              Padding(
                padding: const EdgeInsets.only( bottom: 20),
                child: Container(
    decoration: BoxDecoration(color: Colors.white,
    borderRadius: BorderRadius.circular(10),boxShadow: [
    BoxShadow(color:Colors.black,spreadRadius: 1)
    ]),
                  height: 230,
                  width: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          chartmethodcik(Money2["çıktı_1"],Money2["çıktı_1"]),
                          chartmethodcik(Money2["çıktı_2"],Money2["çıktı_2"]),
                          chartmethodcik(Money2["çıktı_3"],Money2["çıktı_3"]),
                          chartmethodcik(Money2["çıktı_4"],Money2["çıktı_4"]),
                          chartmethodcik(Money2["çıktı_5"],Money2["çıktı_5"]),
                          chartmethodcik(Money2["çıktı_1"],Money2["çıktı_1"]),
                          chartmethodcik(Money2["çıktı_2"],Money2["çıktı_2"]),
                          chartmethodcik(Money2["çıktı_3"],Money2["çıktı_3"]),
                          chartmethodcik(Money2["çıktı_4"],Money2["çıktı_4"]),
                          chartmethodcik(Money2["çıktı_5"],Money2["çıktı_5"]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  hareketlertext(Icons.add_box,Colors.green,"akbank",Money["Girdi_1"]),
                  hareketlertext(Icons.indeterminate_check_box,Colors.redAccent,"akbank",Money2["çıktı_5"]),
                  hareketlertext(Icons.add_box,Colors.green,"akbank",Money["Girdi_2"]),
                  hareketlertext(Icons.indeterminate_check_box,Colors.redAccent,"akbank",Money2["çıktı_4"]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Container hareketlertext(IconData gelirgider,Color renk,String isim, double? miktar) {
    return Container(
        decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(top :5,left: 13,right: 13,bottom: 5),
      child: ListTile(
        leading: Icon(gelirgider,color: renk,size: 25),
        title: Text("$isim $miktar",style: TextStyle(color: Colors.black),),
      ),
    );
  }

  Column chartmethodgir(@required double? yukseklik,@required double? sayisi) {
    double hareket(double tutar){
      return ((tutar) * 200)/300;
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            decoration: BoxDecoration(
            color: Colors.blue,
            ),

          height: hareket(yukseklik!),
          width: 26,
          margin: EdgeInsets.only(
            left: 7,
            right: 7,
          ),
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              sayisi.toString(),
              style: TextStyle(
                  fontSize: 15,
                  decoration: TextDecoration.none,
                  color: Colors.black,
              ),
            ),
          ),
        ),
        Text(
          "12.60",
          style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              decoration: TextDecoration.none),
        )
      ],
    );
  }

  Column chartmethodcik(@required double? yukseklik,@required double? sayisi) {
    double hareket(double tutar){
      return ((tutar) * 200)/300;
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(decoration: BoxDecoration(
            color: Colors.blue),
          height: hareket(yukseklik!),
          width: 26,
          margin: EdgeInsets.only(
            left: 7,
            right: 7,
          ),
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              sayisi.toString(),
              style: TextStyle(
                  fontSize: 15,
                  decoration: TextDecoration.none,
                  color: Colors.black),
            ),
          ),
        ),
        Text(
          "12.60",
          style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              decoration: TextDecoration.none),
        )
      ],
    );
  }
}
