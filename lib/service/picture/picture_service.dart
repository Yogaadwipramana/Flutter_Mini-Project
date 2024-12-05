import 'package:dio/dio.dart';

class PictureService {
  final Dio _dio = Dio();

  Future<List<dynamic>> getPictures() async {
    final response = await _dio.get('https://picsum.photos/v2/list', queryParameters: {'limit': 10});
    return response.data;
  }
}
