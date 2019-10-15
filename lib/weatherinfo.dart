import 'package:flutter/material.dart';
import 'main.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.8), BlendMode.dstATop),
                  image: AssetImage('assets/background02.jpg'),
                  fit: BoxFit.fill)),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: Icon(Icons.navigation),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LocationPage()));
                },
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        textBaseline: TextBaseline.ideographic,
                        children: <Widget>[
                          Text('32°',
                              style: Theme.of(context).textTheme.headline),
                          Icon(
                            Icons.wb_sunny,
                            size: 60,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Its 🍦 time\n in mumbai',
                        style: Theme.of(context).textTheme.title,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
