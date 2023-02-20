// class WeatherModel {
//   final String cityName;
//   final double temp;
//   final double wind;
//   final int perssure;
//   final double feelLike;
//   final int humidity;
//   WeatherModel({
//     required this.cityName,
//     required this.feelLike,
//     required this.perssure,
//     required this.temp,
//     required this.wind,
//     required this.humidity,
//   });

//   factory WeatherModel.fromJson(Map<String, dynamic> json) {
//     return WeatherModel(
//       cityName: json["citName"],
//       feelLike: json["main"]["feelLike"],
//       perssure: json["main"]["perssure"],
//       temp: json["main"]["temp"],
//       wind: json["wind"]["speed"],
//       humidity: json["main"]["humidity"],
//     );
//   }
// }

class WeatherModel {
  final double temperatureC;
  final double temperatureF;
  final String condition;

  WeatherModel({
    this.temperatureC = 0,
    this.temperatureF = 0,
    this.condition = " sunny",
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
        temperatureC: json["current"]["temp_c"],
        temperatureF: json["current"]["temp_f"],
        condition: json['current']['condition']['text']);
  }
}
