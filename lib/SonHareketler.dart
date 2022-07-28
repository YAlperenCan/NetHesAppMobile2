
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:flutter/material.dart';

class SonHareketler extends StatefulWidget {
  const SonHareketler({Key? key}) : super(key: key);


  @override
  State<SonHareketler> createState() => _State();
}

class _State extends State<SonHareketler> {
  @override
  static final List<Girdiler> GirdilerData = [
    Girdiler("12.00", 50),
    Girdiler("12.20", 60),
    Girdiler("12.30", 70),
    Girdiler("12.40", 80),
    Girdiler("12.50", 90),
    Girdiler("13.00", 100),

  ];
  static final List<Ciktilar> CiktilarData = [
    Ciktilar("12.00", 50),
    Ciktilar("12.20", 60),
    Ciktilar("12.30", 50),
    Ciktilar("12.40", 87),
    Ciktilar("12.50", 90),
    Ciktilar("13.00", 30),

  ];
  Widget build(BuildContext context) {
    List<charts.Series<Girdiler,String>> series=[
    charts.Series(
      data: GirdilerData,
      id: "Girdiler",
      domainFn: (Girdiler gir,_)=>gir.saat,
      measureFn: (Girdiler gir,_)=>gir.para,
    )
    ];
    List<charts.Series<Ciktilar,String>> series2=[
      charts.Series(
        data: CiktilarData,
        id: "Ciktilar",
        domainFn: (Ciktilar cik,_)=>cik.saat,
        measureFn: (Ciktilar cik,_)=>cik.para,
      )
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        Column(
          children: [
            Container(

              color: Colors.black,
              height: 200,
              width: 200,
              child: charts.BarChart(series) ,
            ),
            Container(
              color: Colors.black,
              height: 200,
              width: 200,
              child: charts.BarChart(series2) ,
            ),
          ],
        ),
      ),
    );
  }
}
  class Girdiler{
  final String saat;
  final int para;

  Girdiler(this.saat, this.para);

  }
class Ciktilar{
  final String saat;
  final int para;

  Ciktilar(this.saat, this.para);

}