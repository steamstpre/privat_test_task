import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task_privat/data/api/api.dart';
import 'package:test_task_privat/data/models/search_result.dart';
import 'package:test_task_privat/data/models/search_result_to_sqflite.dart';
import 'package:test_task_privat/data/repository/repository.dart';

part 'list_screen_event.dart';
part 'list_screen_state.dart';
part 'list_screen_bloc.freezed.dart';

class ListScreenBloc extends Bloc<ListScreenEvent, ListScreenState> {
  final IApi _api;
  final IRepository _repository;
  final List<Result> _results = [];
  int _indexOfPage = 1;
  String _nameOfFilm = '';

  ListScreenBloc(IApi api, IRepository repository)
      : _api = api,
        _repository = repository,
        super(const ListScreenState.initial()) {
    on<ListScreenEvent>(
      (event, emit) => event.map(
        search: (event) => _searchFilm(event, emit),
        cleanSearch: (event) => _cleanSearch(event, emit),
      ),
    );
  }

  Future<void> _searchFilm(Search event, emit) async {
    if (_nameOfFilm.isNotEmpty && _nameOfFilm == event.nameOfFilm) {
      _indexOfPage++;
    } else {
      _nameOfFilm = event.nameOfFilm;
      _results.clear();
      _indexOfPage = 1;
      await _repository.clearCache();
      emit(const Loading());
    }

    final searchResult =
        await _api.getFilmsList(_indexOfPage, event.nameOfFilm);

    if (searchResult != null) {
      if (searchResult.results.isEmpty) {
        emit(const EmptyResult());
      }
      await _repository.cacheSearchResult(
        searchResult.results.map(SearchResultToSqFlite.fromApiModel).toList(),
      );
      _results.addAll(searchResult.results);
      final tempList = [..._results];
      emit(ResultOfSearch(results: tempList));
    }
  }

  void _cleanSearch(CleanSearch event, emit) =>
      emit(const ListScreenState.initial());
}
