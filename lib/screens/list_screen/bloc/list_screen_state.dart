part of 'list_screen_bloc.dart';

@freezed
class ListScreenState with _$ListScreenState {
  const factory ListScreenState.initial() = _Initial;
  const factory ListScreenState.resultOfSearch({
    required List<Result> results,
  }) = ResultOfSearch;
  const factory ListScreenState.loading() = Loading;
  const factory ListScreenState.emptyResult() = EmptyResult;
}
