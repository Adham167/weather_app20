import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app20/cubits/weathercubits/weather_cubit.dart';
import 'package:weather_app20/cubits/weathercubits/weather_states.dart';
import 'package:weather_app20/views/search_view.dart';
import 'package:weather_app20/widgets/no_weather_body.dart';
import 'package:weather_app20/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = "Home_View";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Weather", style: TextStyle(color: Colors.white)),
            Spacer(flex: 1),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SearchView.id);
              },
              icon: Icon(Icons.search),
              color: Colors.white,
            ),
          ],
        ),
        backgroundColor: Colors.blue,
      ),
      body: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return Center(child: CircularProgressIndicator());
          } else if (state is SuccessState) {
           return WeatherInfoBody(
              weatherModel:
                  BlocProvider.of<WeatherCubit>(context).weatherModel!,
            );
          } else {
            return NoWeatherBody();
          }
        },
      ),
    );
  }
}
