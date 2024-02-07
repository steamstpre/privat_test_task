import 'package:test_task_privat/data/models/result_interface.dart';
import 'package:test_task_privat/data/models/search_result.dart';

class SearchResultToSqFlite extends ResultInterface {
  SearchResultToSqFlite({
    required super.backdropPath,
    required super.genreIds,
    required super.id,
    required super.originalLanguage,
    required super.originalTitle,
    required super.overview,
    required super.popularity,
    required super.posterPath,
    required super.releaseDate,
    required super.title,
  });

  Map<String, dynamic> toSqfliteMap() {
    return {
      'backdrop_path': backdropPath,
      'id': id,
      'original_language': originalLanguage,
      'original_title': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'title': title,
    };
  }

  factory SearchResultToSqFlite.fromSqFlite(Map<String, dynamic> json) =>
      SearchResultToSqFlite(
        backdropPath: json['backdrop_path'] as String?,
        genreIds: (json['genre_ids'] as List<dynamic>?)
            ?.map((e) => e as int)
            .toList(),
        id: json['id'] as int,
        originalLanguage: json['original_language'] as String?,
        originalTitle: json['original_title'] as String?,
        overview: json['overview'] as String?,
        popularity: (json['popularity'] as num).toDouble(),
        posterPath: json['poster_path'] as String?,
        releaseDate: json['release_date'] as String?,
        title: json['title'] as String?,
      );

  factory SearchResultToSqFlite.fromApiModel(Result result) =>
      SearchResultToSqFlite(
        backdropPath: result.backdropPath,
        genreIds: result.genreIds,
        id: result.id,
        originalLanguage: result.originalLanguage,
        originalTitle: result.originalTitle,
        overview: result.overview,
        popularity: result.popularity,
        posterPath: result.posterPath,
        releaseDate: result.releaseDate,
        title: result.title,
      );
}
