import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/main.dart';

import '../models/weather_model.dart';
import '../services/wheather_service.dart';

class SearchPage extends StatelessWidget {
  SearchPage({required this.update});
  VoidCallback update;
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search a City'),
        backgroundColor: Color(0xff4a81f6),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (city){
                cityName=city;
              },
              decoration: InputDecoration(
               // hintText: 'Enter a city',
                prefixIcon: Icon(Icons.location_city),
                border: OutlineInputBorder(),
                label: Text('Enter a city')
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
           MaterialButton(
            onPressed: () async {
              WeatherModel res=await WheatherService().getWeather(cityName: cityName!);
              weatherdata=res;
              update();
              Navigator.pop(context);
            },
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
            color: Color(0xff4a81f6),
            minWidth: 250,
            height: 50,
            child: Text(
              'Search',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),
            ),
          ),
        ],
      ),
    );
  }
}
WeatherModel? weatherdata;