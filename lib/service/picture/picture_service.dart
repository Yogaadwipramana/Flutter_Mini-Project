import 'package:dio/dio.dart';

class PictureService {
  final Dio _dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 5),  // Timeout koneksi dalam Duration
      receiveTimeout: const Duration(seconds: 5),  // Timeout menerima data dalam Duration
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
