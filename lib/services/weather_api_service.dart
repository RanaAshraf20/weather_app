import 'package:dio/dio.dart';
import 'package:w/models/weather_model.dart';

class WeatherApiService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String key = '666ad2f6cc3d4d6baf4141302242710';
  WeatherApiService(this.dio);

  Future<WeatherModel> getCurrentWeather({required String city}) async {
    try {
      Response respone =
          await dio.get('$baseUrl/forecast.json?key=$key&q=$city&days=1');

      WeatherModel weatherModel = WeatherModel.fromJson(respone.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'oops there is an error, try later!';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('oops there is an error, try later!');
    }
  }
}
