<<<<<<< HEAD
=======
import 'package:dio/dio.dart';
>>>>>>> 5124f1411bded01c82dd4396a15284f442bc7cf6
import 'package:simple_weather/data/remote_data_sources/weather_remote_data_source.dart';
import 'package:simple_weather/domain/models/weather_model.dart';

class WeatherRepository {
  WeatherRepository(this._weatherRemoteDataSource);
  final WeatherRemoteDataSource _weatherRemoteDataSource;

  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
<<<<<<< HEAD
    final json = await _weatherRemoteDataSource.getWeatherData(
      city: city,
    );

=======
    final response = await Dio().get<Map<String, dynamic>>(
      'http://api.weatherapi.com/v1/current.json?key=f568c97ca07745959dd100252232209&q=$city&aqi=no',
    );
    final json = response.data;
>>>>>>> 5124f1411bded01c82dd4396a15284f442bc7cf6
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
