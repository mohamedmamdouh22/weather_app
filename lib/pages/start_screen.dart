import 'package:flutter/material.dart';

import 'home_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151b5e),
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
                  fontSize: 50,color: Colors.white, fontFamily: 'times'),
            ),
            Spacer(flex: 1,),
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
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HomeScreen();
                  }));
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                minWidth: 250,
                height: 50,

                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
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
