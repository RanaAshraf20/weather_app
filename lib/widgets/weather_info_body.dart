import 'package:flutter/material.dart';
import 'package:w/shared_components/custom_text.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            text: 'Beni Suef',
            size: 30,
            weight: FontWeight.bold,
          ),
          CustomText(
            text: 'Updated at: 23:46',
            size: 20,
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage('assets/images/clear.png'),
              ),
              CustomText(
                text: '17',
                size: 26,
                weight: FontWeight.bold,
              ),
              Column(
                children: [
                  CustomText(
                    text: 'maxtemp: 24',
                    size: 14,
                  ),
                  CustomText(
                    text: 'mintemp: 24',
                    size: 14,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          CustomText(
            text: 'Light rain',
            size: 30,
            weight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
