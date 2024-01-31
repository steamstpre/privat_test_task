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

  ListScreenBloc() : super(const ListScreenState.initial()) {
    on<ListScreenEvent>((event, emit) =>
        event.map(search: (event) => _searchFilm(event, emit)));
  }

  Future<void> _searchFilm(Search event, emit) async {
    emit(const Loading());
    final searchResult = await getIt
        .get<DependencyInjection>()
        .api
        .getFilmsList(1, event.nameOfFilm);

    if (searchResult != null) {
      emit(ResultOfSearch(results: searchResult.results!));
    }
  }
}
