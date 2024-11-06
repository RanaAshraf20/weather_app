import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:w/components/app_bar.dart';
import 'package:w/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:w/models/weather_model.dart';
import 'package:w/shared_components/text_input_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarComponent(
        title: 'Search',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
            child: TextInputField(
          onSubmitted: (value) async {
            WeatherModel weatherModel =
                BlocProvider.of<GetWeatherCubit>(context)
                    .getWeather(cityName: value);
            Navigator.of(context).pop();
          },
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          label: 'Search',
          labelColor: Colors.orange,
          suffixIcon: Icons.search,
          hintText: 'Enter City Name',
          borderColor: Colors.orange,
          suffixIconColor: Colors.orange,
          borderRadius: 6,
        )),
      ),
    );
  }
}


