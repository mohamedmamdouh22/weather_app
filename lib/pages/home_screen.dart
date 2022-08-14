import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/pages/search_page.dart';
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void updateUi(){
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4a81f6),
        title:Text('Search now'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return SearchPage(update: updateUi,);
              }));
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: weatherdata==null ?
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'There is no Weather 😔',
              style: TextStyle(
                fontSize: 24
              ),
            ),
            Text(
              'Search now 🔍',
              style: TextStyle(
                  fontSize: 24
              ),
            ),
          ],
        ),
      ):
      Container(
        color: Colors.orange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 3,),
            Text('Cairo',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Updated: 12:30',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            Spacer(flex: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/clear.png'),
                Text('30.0',
                  style: TextStyle(
                    fontSize: 32,

                  ),
                ),
                Column(
                  children: [
                    Text('minTemp: 32'),
                    Text('minTemp: 32'),
                  ],
                ),

              ],
            ),
            Spacer(flex: 1,),
            Text('Clear',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(flex: 5,),
          ],
        ),
      ),
    );
  }
}
