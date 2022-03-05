// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

class Experiment5 extends StatelessWidget {
  const Experiment5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'Experiment No 5',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigoAccent.shade400,
        ),
        body: Column(
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: const Image(
                    fit: BoxFit.cover,
                    width: 175,
                    height: 100,
                    image: NetworkImage(
                        'https://images.indianexpress.com/2021/08/Neeraj-Chopra-gold.jpg'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: const Image(
                    fit: BoxFit.cover,
                    width: 175,
                    height: 100,
                    image: AssetImage('assets/images/image2.png'),
                  ),
                )
              ],
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: const Image(
                    fit: BoxFit.cover,
                    width: 175,
                    height: 100,
                    image: NetworkImage(
                        'https://images.hindustantimes.com/img/2022/02/24/1600x900/dhoni-six-getty_1625637410869_1645704051197.jpg'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: const Image(
                    fit: BoxFit.cover,
                    width: 175,
                    height: 100,
                    image: AssetImage('assets/images/image3.png'),
                  ),
                )
              ],
            ),
            SizedBox(height: 25),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 40,
              endIndent: 40,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.purple,
                  size: 30.0,
                ),
                Icon(
                  Icons.add_call,
                  color: Colors.blue,
                  size: 36.0,
                ),
                Icon(
                  Icons.add_location_alt_rounded,
                  color: Colors.green,
                  size: 36.0,
                ),
              ],
            ),
            SizedBox(height: 30),
            Center(
                child: Container(
                    child: SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        series: <LineSeries<SalesData, String>>[
                  LineSeries<SalesData, String>(
                      // Bind data source
                      dataSource: <SalesData>[
                        SalesData('Jan', 35),
                        SalesData('Feb', 28),
                        SalesData('Mar', 34),
                        SalesData('Apr', 32),
                        SalesData('May', 40)
                      ],
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales)
                ])))
          ],
        ));
  }
}
