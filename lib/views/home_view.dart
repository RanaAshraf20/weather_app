import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:w/components/app_bar.dart';
import 'package:w/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:w/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:w/views/search_view.dart';
import 'package:w/widgets/no_weather_body.dart';
import 'package:w/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 10,
          title: const Text('Weather'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return const SearchView();
                    }),
                  );
                },
                icon: const Icon(Icons.search))
          ],
        ),
        body: BlocBuilder<GetWeatherCubit, WeatherStates>(
            builder: (context, state) {
          if (state is WeatherLoadedState) {
            return WeatherInfoBody(
              weatherModel: state.weatherModel,
            );
          } else if (state is WeatherFailerState) {
            return Center(child: Text(state.failerMessage));
          } else {
            return const NoWeatherBody();
          }
        }));
  }
}
