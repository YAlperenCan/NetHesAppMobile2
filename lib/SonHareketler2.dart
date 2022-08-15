import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loginpage/CustomDrawer.dart';
import 'package:loginpage/Dasboard.dart';
import 'package:charts_flutter/flutter.dart' as chart;


class Sonhareketler2 extends StatefulWidget {
  const Sonhareketler2({Key? key}) : super(key: key);

  @override
  State<Sonhareketler2> createState() => _Sonhareketler2State();
}

class _Sonhareketler2State extends State<Sonhareketler2> {
  @override
  static final List<grafikcik> paraData2 = [
    grafikcik("10.31", 230, Colors.blue),
    grafikcik("10.20", 300, Colors.blue),
    grafikcik("10.50", 140, Colors.blue),
    grafikcik("9.30", 280, Colors.blue),
    grafikcik("10.30", 200, Colors.blue),
    grafikcik("7.30", 350, Colors.blue),
    grafikcik("10.10", 170, Colors.blue),
    grafikcik("19.30", 260, Colors.blue),
    grafikcik("17.30", 110, Colors.blue),
    grafikcik("10.19", 290, Colors.blue),
  ];

  static final List<grafikgir> paraData = [
    grafikgir("10.31", 150, Colors.blue),
    grafikgir("10.20", 200, Colors.blue),
    grafikgir("10.50", 340, Colors.blue),
    grafikgir("9.30", 180, Colors.blue),
    grafikgir("10.30", 400, Colors.blue),
    grafikgir("7.30", 350, Colors.blue),
    grafikgir("10.10", 270, Colors.blue),
    grafikgir("19.30", 200, Colors.blue),
    grafikgir("17.30", 350, Colors.blue),
    grafikgir("10.19", 170, Colors.blue),
  ];
  Widget build(BuildContext context) {
    List<chart.Series<grafikcik, String>> series2 = [
      chart.Series(
          data: paraData2,
          id: "grafikcik",
          domainFn: (grafikcik pops, _) => pops.saat,
          measureFn: (grafikcik pops, _) => pops.para,
          colorFn: (grafikcik pops, _) =>
              chart.ColorUtil.fromDartColor(pops.renk)),
    ];


    List<chart.Series<grafikgir, String>> series = [
    chart.Series(
        data: paraData,
        id: "grafikgir",
        domainFn: (grafikgir pops, _) => pops.saat,
        measureFn: (grafikgir pops, _) => pops.para,
        colorFn: (grafikgir pops, _) =>
            chart.ColorUtil.fromDartColor(pops.renk)),
  ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Son Hareketler"),
          centerTitle: true,
        ),
        //drawer: CustomDrawer(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 27),
            width: 700,
            height: 1060,
            decoration: BoxDecoration(color: Colors.blue[100]),
            child: Column(
              children: [
                Text("Giriş Hareketleri",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 380,
                    height: 300,
                    decoration: BoxDecoration(color: Colors.white),
                    child: chart.BarChart(series),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text("Çıkış Hareketleri",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 380,
                    height: 300,
                    decoration: BoxDecoration(color: Colors.white),
                    child: chart.BarChart(series2),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
class grafikgir {
  final String saat;
  final int para;
  final Color renk;
  grafikgir(this.saat, this.para, this.renk);
}
class grafikcik {
  final String saat;
  final int para;
  final Color renk;
  grafikcik(this.saat, this.para, this.renk);
}