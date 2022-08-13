import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/pages/home_screen.dart';
import 'package:weather_app/pages/search_page.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4a81f6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 3,),
            Icon(
              Icons.cloud,
              shadows: [Shadow(color: Color(0xff1e5bec),blurRadius: 100,offset: Offset.fromDirection(50))],
              color: Colors.white,
              size: 150,
            ),

            Text(
              'Wheater',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white),
            ),
            Text(
              'Forecasts',
              style: TextStyle(
                  fontSize: 50, color: Color(0xfffddf5b), fontFamily: 'times'),
            ),
            Spacer(flex: 1,),
            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HomeScreen();
                }));
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
              color: Color(0xfffddf5b),
              minWidth: 250,
              height: 50,
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Color(0xff4a81f6),
                  fontSize: 20
                ),
              ),
            ),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
