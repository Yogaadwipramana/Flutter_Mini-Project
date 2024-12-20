import 'package:dio/dio.dart';

class PictureService {
  final Dio _dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 5),  
      receiveTimeout: const Duration(seconds: 5),  
    ),
  );

  Future<List<dynamic>> getPictures() async {
    try {
      final response = await _dio.get(
        'https://picsum.photos/v2/list',
        queryParameters: {'limit': 10},
      );
      print("Response Data: ${response.data}");  
      return response.data;
    } catch (e) {
      print("Error fetching pictures: $e"); 
      rethrow;  
    }
  }
}
