
import 'package:charts_flutter/flutter.dart';

import 'package:flutter/material.dart';

class SonHareketler extends StatefulWidget {
  const SonHareketler({Key? key}) : super(key: key);


  @override
  State<SonHareketler> createState() => _State();
}

class _State extends State<SonHareketler> {
  @override
  static final List<Girdiler> GirdilerData = [
    Girdiler("12.00", 12345),
    Girdiler("12.20", 123456),
    Girdiler("12.30", 1234235),
    Girdiler("12.40", 12342353),
    Girdiler("12.50", 123423),
    Girdiler("13.00", 12353),

  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: c ,
      ),
    );
  }
}
  class Girdiler{
  final String saat;
  final int para;

  Girdiler(this.saat, this.para);

  }