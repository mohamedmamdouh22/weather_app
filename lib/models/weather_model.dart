class WeatherModel {
  String date;
  String condition;
  double temp;
  double minTemp;
  double maxTemp;
  WeatherModel(
      {required this.date,
      required this.condition,
      required this.temp,
      required this.minTemp,
      required this.maxTemp
   });
  factory WeatherModel.fromJson(dynamic data) {
    var jsonData = data['forecast']['forecastday'][0]['day'];
    return WeatherModel(
        date: data['location']['localtime'],
        condition: jsonData['condition']['text'],
        temp: jsonData['avgtemp_c'],
        minTemp: jsonData['mintemp_c'],
        maxTemp: jsonData['maxtemp_c']
        );
  }
  @override
  String toString() {
    // TODO: implement toString
    return 'date:$date \ncondition:$condition \ntemp:$temp \nmaxTemp:$maxTemp \nminTemp:$minTemp';
  }
}
