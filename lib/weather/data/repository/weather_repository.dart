import 'package:cleancode/weather/data/datasource/remote_datasource.dart';
import 'package:cleancode/weather/domain/entities/weather.dart';
import 'package:cleancode/weather/domain/repository/weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseremoteDataSource;
  WeatherRepository(this.baseremoteDataSource);
  @override
  Future<Weather> getWeatherCityName(String countryName) async {
    return (await baseremoteDataSource.getWeatherByCountryName(countryName))!;
  }
}
