
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/pages/start_screen.dart';
import 'package:weather_app/providers/weather_provider.dart';

import 'models/weather_model.dart';

void main() {
  runApp( Weather());
}

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return weatherProvider();
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
          home: StartScreen(),
      ),
    );
  }
}
