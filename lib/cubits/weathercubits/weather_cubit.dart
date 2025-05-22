import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app20/cubits/weathercubits/weather_states.dart';
import 'package:weather_app20/models/weather_model.dart';
import 'package:weather_app20/services/weather_services.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.weatherServices) : super(InitialState());

  WeatherServices weatherServices;
  WeatherModel? weatherModel;
  getWeather({required cityName}) async {
    emit(LoadingState());
    try {
      weatherModel = await weatherServices.getCurrenWeather(cityName: cityName);
      emit(SuccessState());
    } on Exception catch (e) {
      emit(FailureState());
    }
  }
}
