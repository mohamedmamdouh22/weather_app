import 'package:flutter/material.dart';
import 'package:weather_app/pages/start_screen.dart';

void main() {
  runApp( Weather());
}

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: StartScreen(),
    );
  }
}
