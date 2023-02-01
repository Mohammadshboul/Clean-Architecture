import 'package:cleancode/weather/domain/entities/weather.dart';
import 'package:cleancode/weather/domain/repository/weather_repository.dart';

class GetWeatherByCountryName {
  final BaseWeatherRepository repository;
  GetWeatherByCountryName(this.repository);
  Future<Weather> execute(String cityName) async {
    return await repository.getWeatherCityName(cityName);
  }
}
