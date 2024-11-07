import 'package:w/models/weather_model.dart';

class WeatherStates {}

class InitialWeatherState extends WeatherStates {}

class WeatherLoadedState extends WeatherStates {
  final WeatherModel weatherModel;

  WeatherLoadedState({required this.weatherModel});
}

class WeatherFailerState extends WeatherStates {
  final String failerMessage;

  WeatherFailerState({required this.failerMessage});
}
