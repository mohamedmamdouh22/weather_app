import 'package:flutter/cupertino.dart';
import 'package:weather_app/models/weather_model.dart';

class weatherProvider extends ChangeNotifier
{
  WeatherModel? _weatherDate;
  set WeatherData(WeatherModel? weather)
  {
    _weatherDate = weather;
    notifyListeners();
  }
  WeatherModel? get WeatherGet => _weatherDate;

}