import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/pages/search_page.dart';
import 'package:weather_app/providers/weather_provider.dart';
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    WeatherModel? data=Provider.of<weatherProvider>(context).WeatherGet;
    return Scaffold(
      appBar: AppBar(
        title: Text('${data?.city==null?'Search':data?.city}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        titleSpacing: 100,
        backgroundColor: Color(0xff151b5e),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return SearchPage();
              }));
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: data==null ?
      Container(
        color: Color(0xff151b5e),
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'There is no Weather 😔',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white
                  ),
                ),
                Text(
                  'Search now 🔍',
                  style: TextStyle(
                      fontSize: 24,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
        ),
      ):
      Container(
        color:  Color(0xff151b5e),
        height: 2000,
        child: Column(
         children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color(0xff6c6f9c),
                      Color(0xff696c9b),
                      Color(0xff404380),
                      Color(0xff212865),
                    ]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network('https:${data.image}'),
                    Text('${data.temp}°',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 70,color: Colors.white) ,),
                    Text('${data.condition}',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Max: ${data.maxTemp}',style:TextStyle(fontSize:20,color: Colors.white,) ,),
                        Text('Min: ${data.minTemp}',style:TextStyle(fontSize:20,color: Colors.white,) ,)
                      ],
                    ),
                    Text('${data.date.substring(10)}',style: TextStyle(color: Colors.white,fontSize: 16),),
                  ],
                ),
              ),
            ),
          ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Container(
                   width: 100,
                   height: 200,
                   decoration:BoxDecoration(
                     boxShadow: [
                       BoxShadow(
                         color: Colors.white.withOpacity(0.4),
                         spreadRadius: 1,
                         blurRadius: 10,
                         offset: Offset(0, 3), // changes position of shadow
                       ),
                     ],
                     gradient: LinearGradient(
                         begin: Alignment.topCenter,
                         end: Alignment.bottomCenter,
                         colors: <Color>[
                           Color(0xff6c6f9c),
                           Color(0xff696c9b),
                           Color(0xff404380),
                           Color(0xff212865),
                         ]
                     ),
                     borderRadius: BorderRadius.all(Radius.circular(20)),
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Text('${data.temp}°C',style: TextStyle(fontSize: 25,color: Colors.white),),
                       data.image==null?Text(''):Image.network('https:${data.image}'),
                       Text('${data.date.substring(5,11)}',style: TextStyle(fontSize: 22,color: Colors.white),),
                     ],
                   ),
                 ),
                 Container(
                   width: 100,
                   height: 200,
                   decoration:BoxDecoration(
                     boxShadow: [
                       BoxShadow(
                         color: Colors.white.withOpacity(0.4),
                         spreadRadius: 1,
                         blurRadius: 10,
                         offset: Offset(0, 3), // changes position of shadow
                       ),
                     ],
                     gradient: LinearGradient(
                         begin: Alignment.topCenter,
                         end: Alignment.bottomCenter,
                         colors: <Color>[
                           Color(0xff6c6f9c),
                           Color(0xff696c9b),
                           Color(0xff404380),
                           Color(0xff212865),
                         ]
                     ),
                     borderRadius: BorderRadius.all(Radius.circular(20)),
                   ),
                   child:  Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Text('${data.temp2}°C',style: TextStyle(fontSize: 25,color: Colors.white),),
                       data.image==null?Text(''):Image.network('https:${data.image}'),
                       Text('${data.date2.substring(5)}',style: TextStyle(fontSize: 22,color: Colors.white),)
                     ],
                   ),
                 ),
                 Container(
                   width: 100,
                   height: 200,
                   decoration:BoxDecoration(
                     boxShadow: [
                       BoxShadow(
                         color: Colors.white.withOpacity(0.4),
                         spreadRadius: 1,
                         blurRadius: 10,
                         offset: Offset(0, 3), // changes position of shadow
                       ),
                     ],
                     gradient: LinearGradient(
                         begin: Alignment.topCenter,
                         end: Alignment.bottomCenter,
                         colors: <Color>[
                           Color(0xff6c6f9c),
                           Color(0xff696c9b),
                           Color(0xff404380),
                           Color(0xff212865),
                         ]
                     ),
                     borderRadius: BorderRadius.all(Radius.circular(20)),
                   ),
                   child:  Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Text('${data.temp3}°C',style: TextStyle(fontSize: 25,color: Colors.white),),
                       data.image==null?Text(''):Image.network('https:${data.image}'),
                       Text('${data.date3.substring(5)}',style: TextStyle(fontSize: 22,color: Colors.white),)
                     ],
                   ),
                 ),
               ],
             ),
           ),
         ],
        ),
      ),
    );
  }
}
