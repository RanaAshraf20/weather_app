import 'package:flutter/material.dart';
import 'package:w/shared_components/custom_text.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
