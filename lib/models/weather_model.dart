class WeatherModel {
  DateTime date;
  String date2;
  String date3;
  String city;
  String condition;
  double temp;
  double minTemp;
  double maxTemp;
  String image;
  double cTemp;
  double temp2;
  double temp3;
  String image2;
  String image3;
  String cImage;

  WeatherModel(
      {required this.date,
        required this.date2,
        required this.date3,
      required this.condition,
      required this.temp,
        required this.cImage,
        required this.cTemp,
      required this.minTemp,
      required this.maxTemp,
        required this.image,
        required this.city,
        required this.temp2,
        required this.temp3,
        required this.image2,
        required this.image3,
   });
  factory WeatherModel.fromJson(dynamic data) {
    var jsonData = data['forecast']['forecastday'][0];
    var day2=data['forecast']['forecastday'][1];
    var day3=data['forecast']['forecastday'][2];

    return WeatherModel(
      city: data['location']['name'],
        cImage:data['current']['condition']['icon'] ,
        cTemp: data['current']['temp_c'],
        date:DateTime.parse(data['location']['localtime']),
        condition: data['current']['condition']['text'],
        temp: jsonData['day']['avgtemp_c'],
        minTemp: jsonData['day']['mintemp_c'],
        maxTemp: jsonData['day']['maxtemp_c'],
        image: jsonData['day']['condition']['icon'],
        temp2: day2['day']['avgtemp_c'],
        temp3: day3['day']['avgtemp_c'],
      image2: day2['day']['condition']['icon'],
      image3: day3['day']['condition']['icon'],
      date2:day2['date'] ,
      date3:day3['date'],
        );
  }
  @override
  String toString() {
    // TODO: implement toString
    return ' temp:$temp2 ';
  }
}
