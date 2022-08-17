

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/providers/weather_provider.dart';

import '../models/weather_model.dart';
import '../services/wheather_service.dart';

class SearchPage extends StatelessWidget {
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151b5e),
      appBar: AppBar(
        title: Text('Search a City'),
        backgroundColor: Color(0xff151b5e),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              onChanged: (city){
                cityName=city;
              },

              decoration: InputDecoration(
               // hintText: 'Enter a city',
                prefixIcon: Icon(Icons.location_city,color: Colors.white,),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Color(0xff7374a1)),
                  ),
                label: Text('Enter a city',style: TextStyle(color: Colors.white),)
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
           // material button
           Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(20)),
               gradient: LinearGradient(
                 begin: Alignment.centerLeft,
                 end: Alignment.centerRight,
                 colors: <Color>[
                   Color(0xff9da1b7),
                   Color(0xff596084),
                   Color(0xff2a3362),
                 ]
               ),
             ),
             child: MaterialButton(
              onPressed: () async {
                WeatherModel? res=await WheatherService().getWeather(cityName: cityName!);
                Provider.of<weatherProvider>(context,listen: false).WeatherData=res;
                Navigator.pop(context);
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),

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
           ),
        ],
      ),
    );
  }
}
