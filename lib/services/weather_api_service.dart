import 'package:dio/dio.dart';
import 'package:w/models/weather_model.dart';

class WeatherApiService {
  final Dio dio;
  final String requestPath = 'https://api.weatherapi.com/v1';
  final String key = '666ad2f6cc3d4d6baf4141302242710';
  WeatherApiService(this.dio);

  Future<WeatherModel> getWeather({required String city}) async {
    Response respone =
        await dio.get('$requestPath/forecast.json?key=$key&q=$city');

    WeatherModel weatherModel = WeatherModel.fromJson(respone.data);
    return weatherModel;
  }
}
