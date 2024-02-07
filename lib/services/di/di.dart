import 'package:test_task_privat/data/api/api.dart';
import 'package:test_task_privat/data/repository/repository.dart';

class DependencyInjection {
  final _api = Api();
  IApi get api => _api;

  final _repository = Repository();
  IRepository get repository => _repository;
}
