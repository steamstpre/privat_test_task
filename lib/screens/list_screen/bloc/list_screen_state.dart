part of 'list_screen_bloc.dart';

@freezed
class ListScreenState with _$ListScreenState {
  const factory ListScreenState.initial() = _Initial;
  const factory ListScreenState.resultOfSearch(
      {required final List<Result> results}) = ResultOfSearch;
  const factory ListScreenState.loading() = Loading;
}
