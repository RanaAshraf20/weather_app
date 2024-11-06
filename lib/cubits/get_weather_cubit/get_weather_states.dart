import 'package:w/models/weather_model.dart';

class WeatherStates {}

class InitialWeatherState extends WeatherStates {}

class WeatherLoadedState extends WeatherStates {}

class WeatherFailerState extends WeatherStates {
  final String failerMessage;

  WeatherFailerState({required this.failerMessage});
}
