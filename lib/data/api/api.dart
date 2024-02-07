import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:test_task_privat/consts/consts.dart';
import 'package:test_task_privat/data/models/search_result.dart';

abstract class IApi {
  Future<SearchResult?> getFilmsList(int page, String value);
}

final class Api extends IApi {
  final _dio = Dio();

  @override
  Future<SearchResult?> getFilmsList(int page, String value) async {
    try {
      final response = await _dio.get(
        dotenv.env[AppConsts.getListFilmsUrl]!,
        queryParameters: {
          'query': value,
          'include_adult': 'false',
          'language': 'en-US',
          'page': '$page',
        },
        options: Options(
          contentType: Headers.jsonContentType,
          headers: {
            'Authorization': 'Bearer ${dotenv.env[AppConsts.berearToken]!}',
          },
        ),
      );

      final data = response.data;
      if (data == null) {
        return null;
      }

      final searchResult = SearchResult.fromJson(data as Map<String, dynamic>);
      return searchResult;
    } catch (_) {
      return null;
    }
  }
}
