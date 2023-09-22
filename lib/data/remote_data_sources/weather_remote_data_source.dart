import 'package:dio/dio.dart';

class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
<<<<<<< HEAD
    try {
      final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=f568c97ca07745959dd100252232209&q=$city&aqi=no',
      );
      return response.data;
    } on DioException catch (error) {
      throw Exception(
          error.response?.data['error']['message'] ?? 'Unknown error');
    }
=======
    final response = await Dio().get<Map<String, dynamic>>(
      'http://api.weatherapi.com/v1/current.json?key=f568c97ca07745959dd100252232209&q=$city&aqi=no',
    );
    final responseData = response.data;
>>>>>>> 5124f1411bded01c82dd4396a15284f442bc7cf6
  }
}
