import 'package:simple_weather/data/remote_data_sources/weather_remote_data_source.dart';
import 'package:simple_weather/domain/models/weather_model.dart';

class WeatherRepository {
  WeatherRepository(this._weatherRemoteDataSource);
  final WeatherRemoteDataSource _weatherRemoteDataSource;

  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    final json = await _weatherRemoteDataSource.getWeatherData(
      city: city,
    );

    if (json == null) {
      return null;
    }
    return WeatherModel.fromJson(json);
  }
}

/* Jedna metoda przyjmująca String city, czyli to, co ostatecznie wprowadzimy w textfield
To TUTAJ będziemy odwoływać sie do REST API z danymi. Póki co, dane są zahardcodowane
zeby tylko przedstawic zamysł aplikacji
 */
