import 'package:flutter/material.dart';
import 'package:w/shared_components/custom_text.dart';

class WeatherStatusView extends StatelessWidget {
  const WeatherStatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: 'There is no weather 😔 Start',
            size: 24,
          ),
          CustomText(
            text: 'searching now 🔍',
            size: 24,
          ),
        ],
      ),
    );
  }
}
