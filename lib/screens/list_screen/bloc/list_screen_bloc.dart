import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task_privat/data/api/api.dart';
import 'package:test_task_privat/data/models/search_result.dart';
import 'package:test_task_privat/data/models/search_result_to_sqflite.dart';
import 'package:test_task_privat/data/repository/repository.dart';
import 'package:test_task_privat/services/service_of_index_of_page/service_of_index_page.dart';

part 'list_screen_event.dart';
part 'list_screen_state.dart';
part 'list_screen_bloc.freezed.dart';

class ListScreenBloc extends Bloc<ListScreenEvent, ListScreenState> {
  final IApi _api;
  final IRepository _repository;
  final List<Result> _results = [];
  final ServiceOfIndexPage _serviceOfIndexPage = ServiceOfIndexPage();

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
    final index = _serviceOfIndexPage.changeIndexOfPage(event.nameOfFilm);

    if (index == 1) {
      _results.clear();
      await _repository.clearCache();
      emit(const Loading());
    }

    final searchResult = await _api.getFilmsList(index, event.nameOfFilm);

    if (searchResult != null && searchResult.results.isNotEmpty) {
      await _repository.cacheSearchResult(
        searchResult.results.map(SearchResultToSqFlite.fromApiModel).toList(),
      );
      _results.addAll(searchResult.results);
      final tempList = [..._results];
      emit(ResultOfSearch(results: tempList));
    } else {
      emit(const EmptyResult());
    }
  }

  void _cleanSearch(CleanSearch event, emit) =>
      emit(const ListScreenState.initial());
}
