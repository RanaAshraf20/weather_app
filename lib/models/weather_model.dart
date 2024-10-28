class WeatherModel {
  final String city;
  final String time;
  final double maxTemp;
  final double minTemp;
  final double avgTemp;
  final String weatherCondition;
  final String iconImage;

  WeatherModel({
    required this.city,
    required this.time,
    required this.maxTemp,
    required this.minTemp,
    required this.avgTemp,
    required this.weatherCondition,
    required this.iconImage,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      city: json['location']['name'],
      time: json['location']['localtime'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      avgTemp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      weatherCondition: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
      iconImage: json['forecast']['forecastday'][0]['day']['condition']['icon'],
    );
  }
}
