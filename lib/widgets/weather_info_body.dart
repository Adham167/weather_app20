import 'package:flutter/material.dart';
import 'package:weather_app20/main.dart';
import 'package:weather_app20/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              getWeatherColor(weatherModel.condition),
              getWeatherColor(weatherModel.condition)[300]!,
              getWeatherColor(weatherModel.condition)[900]!,
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                weatherModel.cityName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
              ),
              Text(
                "Updated at ${weatherModel.timeupdated.hour}:${weatherModel.timeupdated.minute}",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Image.network('https:${weatherModel.image}'),
                  Text(
                    weatherModel.temp.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("mintemp: ${weatherModel.mintemp.round()}"),
                      Text("maxtemp: ${weatherModel.maxtemp.round()}"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 32),
              Text(
                weatherModel.condition,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
