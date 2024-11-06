class WeatherStates {}

class InitialWeatherState extends WeatherStates {}

class WeatherLoadedState extends WeatherStates {}

class WeatherFailerState extends WeatherStates {
  final String failerMessage;

  WeatherFailerState({required this.failerMessage});

}
