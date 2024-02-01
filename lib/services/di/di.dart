import 'package:get_it/get_it.dart';
import 'package:test_task_privat/data/api/api.dart';
import 'package:test_task_privat/data/repository/repositort.dart';

class DependencyInjection {
  final getIt = GetIt.instance;

  void setupDi() =>
      getIt.registerSingleton<DependencyInjection>(DependencyInjection());

  final _api = Api();
  IApi get api => _api;

  final _repository = Repository();
  IRepository get repository => _repository;
}
