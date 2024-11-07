import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:w/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:w/main.dart';
import 'package:w/models/weather_model.dart';
import 'package:w/shared_components/custom_text.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              colorThemeWeather(weatherModel.weatherCondition),
              colorThemeWeather(weatherModel.weatherCondition)[300]!,
              colorThemeWeather(weatherModel.weatherCondition)[50]!,
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: weatherModel.city,
              size: 30,
              weight: FontWeight.bold,
            ),
            CustomText(
              text:
                  'Updated at: ${weatherModel.time.hour}:${weatherModel.time.minute}',
              size: 20,
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: NetworkImage('https:${weatherModel.iconImage}'),
                ),
                CustomText(
                  text: weatherModel.avgTemp.round().toString(),
                  size: 26,
                  weight: FontWeight.bold,
                ),
                Column(
                  children: [
                    CustomText(
                      text: 'maxtemp: ${weatherModel.maxTemp.round()}',
                      size: 14,
                    ),
                    CustomText(
                      text: 'mintemp: ${weatherModel.minTemp.round()}',
                      size: 14,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            CustomText(
              text: weatherModel.weatherCondition,
              size: 30,
              weight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}

DateTime dateFunc(String date) {
  return DateTime.parse(date);
}
