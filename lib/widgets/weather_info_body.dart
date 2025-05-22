import 'package:flutter/material.dart';
import 'package:weather_app20/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherModel.cityName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
            ),
            Text(weatherModel.timeupdated, style: TextStyle(fontSize: 20)),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Image.network(weatherModel.image),
                Text(
                  weatherModel.temp.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                ),
                Column(
                  children: [
                    Text("mintemp: ${weatherModel.mintemp}"),
                    Text("maxtemp: ${weatherModel.maxtemp}"),
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
    );
  }
}
