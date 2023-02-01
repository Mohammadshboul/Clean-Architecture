import 'package:cleancode/weather/data/datasource/remote_datasource.dart';
import 'package:cleancode/weather/data/repository/weather_repository.dart';
import 'package:cleancode/weather/domain/entities/weather.dart';
import 'package:cleancode/weather/domain/repository/weather_repository.dart';
import 'package:cleancode/weather/domain/usecase/get_weather_by_country.dart';
import 'package:flutter/material.dart';

void main() async {
  BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
  BaseWeatherRepository baseWeatherRepository =
      WeatherRepository(baseRemoteDataSource);
  Weather weather =
      await GetWeatherByCountryName(baseWeatherRepository).execute("jordan");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
