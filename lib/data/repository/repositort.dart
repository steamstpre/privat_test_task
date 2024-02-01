import 'package:path/path.dart';
import 'package:test_task_privat/data/models/search_result.dart';
import 'package:sqflite/sqflite.dart';

abstract class IRepository {
  Future<void> openDb();
  Future<void> cacheSearchResult(List<Result> movies);
  Future<SearchResult?> getCachedSearchResult();
  Future<void> clearCache();
}

class Repository extends IRepository {
  late Database _database;

  @override
  Future<void> openDb() async {
    final String path = join(await getDatabasesPath(), 'your_database.db');
    _database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
       CREATE TABLE IF NOT EXISTS results (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          backdrop_path TEXT,
          movie_id INTEGER,
          original_language TEXT,
          original_title TEXT,
          overview TEXT,
          popularity REAL,
          poster_path TEXT,
          release_date TEXT,
          title TEXT,
          FOREIGN KEY(search_result_id) REFERENCES search_results(id)
        );
      ''');
    });
  }

  @override
  Future<void> cacheSearchResult(List<Result> movies) async {
    await openDb();
    for (final result in movies) {
      await _database.insert('results', result.toSqfliteMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
    }
  }

  @override
  Future<SearchResult?> getCachedSearchResult() async {
    await openDb();
    final List<Map<String, dynamic>> searchResult =
        await _database.query('search_results', orderBy: 'id DESC', limit: 1);
    if (searchResult.isEmpty) return null;

    final List<Map<String, dynamic>> results = await _database.query(
      'results',
      where: 'search_result_id = ?',
      whereArgs: [searchResult[0]['id']],
    );

    return SearchResult(
      page: searchResult[0]['page'] as int,
      totalPages: searchResult[0]['total_pages'] as int,
      totalResults: searchResult[0]['total_results'] as int,
      results: results.map((e) => Result.fromJson(e)).toList(),
    );
  }

  @override
  Future<void> clearCache() async {
    await openDb();
    await _database.delete('search_results');
    await _database.delete('results');
  }
}
