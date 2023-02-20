import 'package:flutter/material.dart';
import 'package:weather_api_project/constants.dart';

Widget additionalInformation(
    String wind, String humidity, String pressure, String feelsLike) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "tempF",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                    color: textcolor,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "temp",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                    color: textcolor,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  wind,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                    color: textcolor,
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  pressure,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                    color: textcolor,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "humidity",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                    color: textcolor,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "feelsLike",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                    color: textcolor,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  humidity,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                    color: textcolor,
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  feelsLike,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                    color: textcolor,
                  ),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}
