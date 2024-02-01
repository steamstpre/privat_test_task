part of 'list_screen_bloc.dart';

@freezed
class ListScreenEvent with _$ListScreenEvent {
  const factory ListScreenEvent.search({required String nameOfFilm}) = Search;
  const factory ListScreenEvent.cleanSearch() = CleanSearch;
}
