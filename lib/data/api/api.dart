import 'package:dio/dio.dart';
import 'package:test_task_privat/consts/api_config.dart';
import 'package:test_task_privat/data/models/search_result.dart';

abstract class IApi {
  Future<SearchResult?> getFilmsList(int page, String value);
}

class Api extends IApi {
  final _dio = Dio();

  @override
  Future<SearchResult?> getFilmsList(int page, String value) async {
    try {
      final response = await _dio.get(
        ApiConfig.getListFilmsUrl,
        queryParameters: {
          'query': value,
          'include_adult': 'false',
          'language': 'en-US',
          'page': '$page'
        },
        options: Options(
          contentType: Headers.jsonContentType,
          headers: {'Authorization': 'Bearer ${ApiConfig.berearToken}'},
        ),
      );

      final data = response.data;
      if (data == null) {
        return null;
      }

      final searchResult = SearchResult.fromJson(data);
      return searchResult;
    } catch (_) {
      return null;
    }
  }
}
