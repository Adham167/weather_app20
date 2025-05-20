import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Alexandria",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
            ),
            Text("updated at : 22:25", style: TextStyle(fontSize: 20)),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Text("foto"),
                Text(
                  "17",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                ),
                Column(children: [Text("mintemp: 17"), Text("maxtemp: 5")]),
              ],
            ),
            SizedBox(height: 32),
            Text(
              "sunny",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
            ),
          ],
        ),
      ),
    );
  }
}
