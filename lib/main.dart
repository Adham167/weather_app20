import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app20/cubits/weathercubits/weather_cubit.dart';
import 'package:weather_app20/cubits/weathercubits/weather_states.dart';
import 'package:weather_app20/services/weather_services.dart';
import 'package:weather_app20/views/home_view.dart';
import 'package:weather_app20/views/search_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        final WeatherModel =
            BlocProvider.of<WeatherCubit>(context).weatherModel;

        return MaterialApp(
          theme: ThemeData(
            primarySwatch: getWeatherColor(WeatherModel?.condition),
            useMaterial3: false,
          ),
          debugShowCheckedModeBanner: false,
          routes: {
            HomeView.id: (context) => HomeView(),
            SearchView.id: (context) => SearchView(),
          },
          initialRoute: HomeView.id,
        );
      },
    );
  }
}

MaterialColor getWeatherColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition.toUpperCase()) {
    case 'SUNNY':
    case 'ClEAR':
      return Colors.yellow;
    case 'Partly Cloudy':
    case 'cloudy':
    case 'overcast':
      return Colors.grey;
    case 'mist':
    case 'fog':
    case 'freezing fog':
      return Colors.blueGrey;
    case 'patchy rain possible':
    case 'light drizzle':
    case 'light rain':
    case 'moderate rain':
    case 'heavy rain':
    case 'rain shower':
      return Colors.blue;
    case 'patchy snow possible':
    case 'light snow':
    case 'moderate snow':
    case 'heavy snow':
    case 'snow shower':
      return Colors.lightBlue;
    case 'patchy sleet possible':
    case 'light sleet':
    case 'moderate sleet':
    case 'sleet shower':
      return Colors.teal;
    case 'ice pellets':
    case 'light showers of ice pellets':
    case 'moderate or heavy showers of ice pellets':
      return Colors.cyan;
    case 'thundery outbreaks possible':
    case 'light rain with thunder':
    case 'moderate or heavy rain with thunder':
    case 'light snow with thunder':
    case 'moderate or heavy snow with thunder':
      return Colors.deepPurple;
    default:
      return Colors.brown; // Default color for unknown conditions
  }
}
