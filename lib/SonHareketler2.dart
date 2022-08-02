import 'package:flutter/material.dart';

class Sonhareketler2 extends StatefulWidget {
  const Sonhareketler2({Key? key}) : super(key: key);

  @override
  State<Sonhareketler2> createState() => _Sonhareketler2State();
}

class _Sonhareketler2State extends State<Sonhareketler2> {
  @override
  Map<String,double> Money={
  "Girdi_1": 30,"Girdi_2": 13,"Girdi_3":45000
  };

  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Chart(Money: Money),
        Chart(Money: Money)

      ],
    );
  }
}

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
    required this.Money,
  }) : super(key: key);

  final Map<String, double> Money;

  @override
  Widget build(BuildContext context) {
    return Container(
      transformAlignment: Alignment.bottomCenter,
      width: 30,
      height: Money["Girdi_2"],
      color: Colors.blue,
      margin: EdgeInsets.all(5),
    );
  }
}
