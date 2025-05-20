import 'package:flutter/material.dart';
import 'package:weather_app20/views/home_view.dart';
import 'package:weather_app20/views/search_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.id: (context) => HomeView(),
        SearchView.id: (context) => SearchView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
