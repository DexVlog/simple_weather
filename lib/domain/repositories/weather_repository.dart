import 'package:simple_weather/domain/models/weather_model.dart';

class WeatherRepository {
  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    return const WeatherModel(city: 'Warsaw', temperature: -5.5);
  }
}

/* Jedna metoda przyjmująca String city, czyli to, co ostatecznie wprowadzimy w textfield
To TUTAJ będziemy odwoływać sie do REST API z danymi. Póki co, dane są zahardcodowane
zeby tylko przedstawic zamysł aplikacji
 */
