import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:weather/utils/endpoint.dart';

class ServiceInfoLocation {
  getTemperature(String? cordinates) async {
    try {
      Response response = await Dio().get(Endpoint.baseUrl + cordinates!);
      return (response.data);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
