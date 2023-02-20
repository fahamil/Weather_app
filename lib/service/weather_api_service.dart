// import 'dart:convert';

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
// import 'package:weather_api_project/model/weather_model.dart';

// class WeatherApiService {
//   Future<WeatherModel>? getCurrentWeather(String? location) async {
//     var endponit = Uri.parse(
//         "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=1c2c4c2029abfe85630f347de5e61ce2");
//     var resposne = await http.get(endponit);
//     var body = jsonDecode(resposne.body);
//     print(WeatherModel.fromjson(body).cityName);
//     return WeatherModel.fromjson(body);
//   }
// }

import 'package:weather_api_project/model/weather_model.dart';

// d9006a937e714e988fd230309231902
class WeatherApiService {
  Future<WeatherModel?> getCurrentWeatehr(String place) async {
   try{
     final queryparameters = {
      'key': 'd9006a937e714e988fd230309231902',
      'q': place,
    };
    final uri =
        Uri.http('api.weatherapi.com', '/v1/current.json', queryparameters);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return WeatherModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("can not get the weather");
    }
   }catch (e){
    rethrow;
   }
  }
}
