import 'package:flutter/material.dart';
import 'package:weather_app20/views/no_weather_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Weather", style: TextStyle(color: Colors.white)),
            Spacer(flex: 1),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.white,
            ),
          ],
        ),
        backgroundColor: Colors.blue,
      ),
      body: NoWeatherView(),
    );
  }
}
