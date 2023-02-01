import '../entities/weather.dart';

abstract class BaseWeatherRepository {
  Future<Weather> getWeatherCityName(String cityName);
}
