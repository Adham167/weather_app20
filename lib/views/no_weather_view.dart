import 'package:flutter/material.dart';

class NoWeatherView extends StatelessWidget {
  const NoWeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "there is no weather 😞 start",
              style: TextStyle(fontSize: 30),
            ),
            Text("searching 🔍 now", style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
