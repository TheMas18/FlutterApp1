// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

class ExperiMent4 extends StatelessWidget {
  const ExperiMent4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'The 5-star Trident Nariman Point',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  ' Mumbai, Maharashtra 400021',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('45'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        '''The 5-star Trident Nariman Point is located in Mumbai, overlooking the beautiful Arabian Sea from Marine Drive. Featuring a 24-hour business center, the hotel has an outdoor pool, a fitness center and pampering spa treatments. Complimentary WiFi is available in all rooms.Fitted with air conditioning, all rooms are equipped with a flat screen TV offering satellite channels, personal safe and mini-bar. Some rooms enjoy views of the sea. Private bathrooms come with a shower or bathtub and offers free toiletries.Day trips and car rentals can be arranged at the tour desk. The hotel also provides daily newspapers and luggage storage at its 24-hour front desk.''',
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      title: 'Experiment No 4',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 12, 86, 146),
          title: Center(child: const Text('Experiment No 4')),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/hotel.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
