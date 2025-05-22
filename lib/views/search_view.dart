import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app20/cubits/weathercubits/weather_cubit.dart';
import 'package:weather_app20/models/weather_model.dart';
import 'package:weather_app20/services/weather_services.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  static String id = "Search_View";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search City", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              await BlocProvider.of<WeatherCubit>(
                context,
              ).getWeather(cityName: value);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 32, horizontal: 8),
              hintText: "Enter City Name",
              label: Text("Search"),
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.orange),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
