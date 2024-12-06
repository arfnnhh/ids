import 'package:dio/dio.dart';

class PictureService {
  final Dio _dio;

  PictureService()
      : _dio = Dio(BaseOptions(
          baseUrl: 'https://picsum.photos',
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 5),
        ));

  /// API call to fetch the list of photos with limit
  Future<Response> fetchListPhotos({int limit = 12}) async {
    return await _dio.get('/v2/list', queryParameters: {'limit': limit});
  }

  Future<Map<String, dynamic>> fetchDetailPhoto(int id) async {
    final response = await _dio.get('id/$id/info');
    return response.data;
  }

}
