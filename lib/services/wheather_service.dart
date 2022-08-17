
import 'dart:convert';

import '../models/weather_model.dart';
import 'package:http/http.dart' as http;
class WheatherService {
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = 'fcd0726b7d544a3fad4151949220808';
  Future<WeatherModel?> getWeather({required String cityName}) async {
    WeatherModel? weather;
  try{
    Uri url = Uri.parse(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=3&aqi=no&alerts=no');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);

    weather= WeatherModel.fromJson(data);
  }
  catch(e)
    {
      print(e);
    }
    return weather;
  }
}
