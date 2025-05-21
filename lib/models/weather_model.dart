class WeatherModel {
  final String cityName;
  final String timeupdated;
  final String image;
  final String temp;
  final String maxtemp;
  final String mintemp;
  final String status;

  WeatherModel({
    required this.cityName,
    required this.timeupdated,
    required this.image,
    required this.temp,
    required this.maxtemp,
    required this.mintemp,
    required this.status,
  });
  factory WeatherModel.fromJson(data) {
    return WeatherModel(
      cityName: data['location']['name'],
      timeupdated: data['current']['last_updated'],
      image: data['forecast']['forecastday'][0]['day']['condition']['icon'],
      temp: data['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxtemp: data['forecast']['forecastday'][0]['day']['maxtemp_c'],
      mintemp: data['forecast']['forecastday'][0]['day']['mintemp_c'],
      status: data['forecast']['forecastday'][0]['day']['condition']['text'],
    );
  }
}
