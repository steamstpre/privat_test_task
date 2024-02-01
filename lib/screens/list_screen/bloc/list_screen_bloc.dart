import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:test_task_privat/data/models/search_result.dart';
import 'package:test_task_privat/services/di/di.dart';

part 'list_screen_event.dart';
part 'list_screen_state.dart';
part 'list_screen_bloc.freezed.dart';

class ListScreenBloc extends Bloc<ListScreenEvent, ListScreenState> {
  final getIt = GetIt.instance;
  final List<Result> _results = [];
  int _indexOfPage = 1;
  String _nameOfFilm = '';

  ListScreenBloc() : super(const ListScreenState.initial()) {
    on<ListScreenEvent>((event, emit) => event.map(
          search: (event) => _searchFilm(event, emit),
          cleanSearch: (event) => _cleanSearch(event, emit),
        ));
  }

  Future<void> _searchFilm(Search event, emit) async {
    if (_nameOfFilm.isNotEmpty && _nameOfFilm == event.nameOfFilm) {
      _indexOfPage++;
    } else {
      _nameOfFilm = event.nameOfFilm;
      _results.clear();
      _indexOfPage = 1;
      await getIt.get<DependencyInjection>().repository.clearCache();
      emit(const Loading());
    }

    final searchResult = await getIt
        .get<DependencyInjection>()
        .api
        .getFilmsList(_indexOfPage, event.nameOfFilm);

    if (searchResult != null) {
      await getIt
          .get<DependencyInjection>()
          .repository
          .cacheSearchResult(searchResult.results);
      _results.addAll(searchResult.results);
      final tempList = [..._results];
      emit(ResultOfSearch(results: tempList));
    }
  }

  void _cleanSearch(CleanSearch event, emit) =>
      emit(const ListScreenState.initial());
}
