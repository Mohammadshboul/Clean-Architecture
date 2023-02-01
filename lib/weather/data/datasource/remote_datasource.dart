import 'dart:convert';
import 'package:cleancode/core/utils/constance.dart';
import 'package:dio/dio.dart';
import 'package:cleancode/weather/data/models/weather_model.dart';
import 'package:cleancode/weather/domain/entities/weather.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    try {
      var response = await Dio().get(
          '${AppConstance.baseUrl}/weather?q=$countryName&appid=${AppConstance.AppKey}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
