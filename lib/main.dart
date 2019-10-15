import 'package:flutter/material.dart';
import 'weatherinfo.dart';

void main() {
  runApp(
    MaterialApp(
      home: LocationPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 85.0, fontFamily: 'SpartanMB-Bold'),
          title: TextStyle(fontSize: 36.0, fontFamily: 'SpartanMB-Bold'),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'SpartanMB-Bold'),
        ),
      ),
    ),
  );
}

// Create WeatherPage in a separate file
class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
//      alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background01.jpg'),
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.8), BlendMode.dstATop),
                  fit: BoxFit.fill)),
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.fromLTRB(20, 70, 20, 0),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WeatherPage()));
                },
                child: Text('Get Weather',
                    style: Theme.of(context).textTheme.title),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
