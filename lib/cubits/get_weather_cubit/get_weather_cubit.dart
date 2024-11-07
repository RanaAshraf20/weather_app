import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:w/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:w/models/weather_model.dart';
import 'package:w/services/weather_api_service.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(InitialWeatherState());

  WeatherModel? weatherModel;
  getWeather({required String cityName}) async {
    try {
      weatherModel =
          await WeatherApiService(Dio()).getCurrentWeather(city: cityName);
      emit(WeatherLoadedState(weatherModel: weatherModel!));
    } catch (e) {
      emit(WeatherFailerState(failerMessage: e.toString()));
    }
  }
}
