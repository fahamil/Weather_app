import 'package:flutter/material.dart';
import 'package:weather_api_project/constants.dart';
import 'package:weather_api_project/model/weather_model.dart';
import 'package:weather_api_project/screens/additional_information/ad_information.dart';
import 'package:weather_api_project/screens/current_weather/current_weather.dart';
import 'package:weather_api_project/service/weather_api_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherModel weatherModel = WeatherModel();
  WeatherApiService weatherApiService = WeatherApiService();

  String currentWeather = "";
  double tempC = 0;
  double tempF = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getweather();
  }

  void getweather() async {
    weatherModel = (await weatherApiService.getCurrentWeatehr("London"))!;
    setState(() {
      currentWeather = weatherModel.condition;
      tempC = weatherModel.temperatureC;
      tempF = weatherModel.temperatureF;
    });
    print(weatherModel.temperatureC);
    print(weatherModel.temperatureF);
    print(weatherModel.condition);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kScaffoldColor,
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          elevation: 0,
          title: const Text(
            "Weather App",
            style: TextStyle(color: kTextColor),
          ),
          centerTitle: true,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(currentWeather),

            const SizedBox(
              height: 20,
            ),
            const Text(
              "Additional Information ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),

            //additional Information
            additionalInformation("24", "2", "1014", "24.6")
          ],
        ),
      ),
    );
  }
}
