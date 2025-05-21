import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app20/models/weather_model.dart';

class WeatherServices {
  final Dio dio;

  WeatherServices(this.dio);
  final String baseUrl = "http://api.weatherapi.com/v1";
  final String apiKey = "b9a64f9dc843485d83005738252201";
  Future<Object> getCurrenWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        "$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1",
      );

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ??
          "Oops! there was an error please try later";
      throw (errorMessage);
    } catch (e) {
      log(e.toString());
      throw ("Oops! there was an error please try later");
    }
  }
}
