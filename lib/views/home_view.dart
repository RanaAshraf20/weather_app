import 'package:flutter/material.dart';
import 'package:w/components/app_bar.dart';
import 'package:w/views/search_view.dart';
import 'package:w/widgets/weather_status_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        title: 'Weather',
        icon: Icons.search,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return const SearchView();
            }),
          );
        },
      ),
      body: const WeatherStatusView(),
    );
  }
}
