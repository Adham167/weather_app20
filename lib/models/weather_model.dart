class WeatherModel {
  final String cityName;
  final DateTime timeupdated;
  final String image;
  final double temp;
  final double maxtemp;
  final double mintemp;
  final String condition;

  WeatherModel({
    required this.cityName,
    required this.timeupdated,
    required this.image,
    required this.temp,
    required this.maxtemp,
    required this.mintemp,
    required this.condition,
  });
  factory WeatherModel.fromJson(data) {
    return WeatherModel(
      cityName: data['location']['name'],
      timeupdated: DateTime.parse(data['current']['last_updated']),
      image: data['forecast']['forecastday'][0]['day']['condition']['icon'],
      temp: data['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxtemp: data['forecast']['forecastday'][0]['day']['maxtemp_c'],
      mintemp: data['forecast']['forecastday'][0]['day']['mintemp_c'],
      condition: data['forecast']['forecastday'][0]['day']['condition']['text'],
    );
  }
}
