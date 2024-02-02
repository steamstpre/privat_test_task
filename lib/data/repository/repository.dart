import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:test_task_privat/data/models/search_result.dart';

abstract class IRepository {
  Future<void> openDb();
  Future<void> cacheSearchResult(List<Result> movies);
  Future<List<Result>?> getCachedSearchResult();
  Future<void> clearCache();
}

class Repository extends IRepository {
  late Database _database;

  @override
  Future<void> openDb() async {
    final path = join(await getDatabasesPath(), 'your_database.db');
    _database =
        await openDatabase(path, version: 1, onCreate: (db, version) async {
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
  Future<List<Result>?> getCachedSearchResult() async {
    if (!_database.isOpen) {
      await openDb();
    }
    final result = await _database.query('results');

    final resultsList = result.map(Result.fromJson).toList();

    return resultsList;
  }

  @override
  Future<void> clearCache() async {
    await openDb();
    await _database.delete('search_results');
    await _database.delete('results');
  }
}
