// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameOfFilm) search,
    required TResult Function() cleanSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameOfFilm)? search,
    TResult? Function()? cleanSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameOfFilm)? search,
    TResult Function()? cleanSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Search value) search,
    required TResult Function(CleanSearch value) cleanSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Search value)? search,
    TResult? Function(CleanSearch value)? cleanSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Search value)? search,
    TResult Function(CleanSearch value)? cleanSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListScreenEventCopyWith<$Res> {
  factory $ListScreenEventCopyWith(
          ListScreenEvent value, $Res Function(ListScreenEvent) then) =
      _$ListScreenEventCopyWithImpl<$Res, ListScreenEvent>;
}

/// @nodoc
class _$ListScreenEventCopyWithImpl<$Res, $Val extends ListScreenEvent>
    implements $ListScreenEventCopyWith<$Res> {
  _$ListScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameOfFilm});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$ListScreenEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameOfFilm = null,
  }) {
    return _then(_$SearchImpl(
      nameOfFilm: null == nameOfFilm
          ? _value.nameOfFilm
          : nameOfFilm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements Search {
  const _$SearchImpl({required this.nameOfFilm});

  @override
  final String nameOfFilm;

  @override
  String toString() {
    return 'ListScreenEvent.search(nameOfFilm: $nameOfFilm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.nameOfFilm, nameOfFilm) ||
                other.nameOfFilm == nameOfFilm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameOfFilm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameOfFilm) search,
    required TResult Function() cleanSearch,
  }) {
    return search(nameOfFilm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameOfFilm)? search,
    TResult? Function()? cleanSearch,
  }) {
    return search?.call(nameOfFilm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameOfFilm)? search,
    TResult Function()? cleanSearch,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(nameOfFilm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Search value) search,
    required TResult Function(CleanSearch value) cleanSearch,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Search value)? search,
    TResult? Function(CleanSearch value)? cleanSearch,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Search value)? search,
    TResult Function(CleanSearch value)? cleanSearch,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search implements ListScreenEvent {
  const factory Search({required final String nameOfFilm}) = _$SearchImpl;

  String get nameOfFilm;
  @JsonKey(ignore: true)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CleanSearchImplCopyWith<$Res> {
  factory _$$CleanSearchImplCopyWith(
          _$CleanSearchImpl value, $Res Function(_$CleanSearchImpl) then) =
      __$$CleanSearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CleanSearchImplCopyWithImpl<$Res>
    extends _$ListScreenEventCopyWithImpl<$Res, _$CleanSearchImpl>
    implements _$$CleanSearchImplCopyWith<$Res> {
  __$$CleanSearchImplCopyWithImpl(
      _$CleanSearchImpl _value, $Res Function(_$CleanSearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CleanSearchImpl implements CleanSearch {
  const _$CleanSearchImpl();

  @override
  String toString() {
    return 'ListScreenEvent.cleanSearch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CleanSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameOfFilm) search,
    required TResult Function() cleanSearch,
  }) {
    return cleanSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameOfFilm)? search,
    TResult? Function()? cleanSearch,
  }) {
    return cleanSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameOfFilm)? search,
    TResult Function()? cleanSearch,
    required TResult orElse(),
  }) {
    if (cleanSearch != null) {
      return cleanSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Search value) search,
    required TResult Function(CleanSearch value) cleanSearch,
  }) {
    return cleanSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Search value)? search,
    TResult? Function(CleanSearch value)? cleanSearch,
  }) {
    return cleanSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Search value)? search,
    TResult Function(CleanSearch value)? cleanSearch,
    required TResult orElse(),
  }) {
    if (cleanSearch != null) {
      return cleanSearch(this);
    }
    return orElse();
  }
}

abstract class CleanSearch implements ListScreenEvent {
  const factory CleanSearch() = _$CleanSearchImpl;
}

/// @nodoc
mixin _$ListScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Result> results) resultOfSearch,
    required TResult Function() loading,
    required TResult Function() emptyResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Result> results)? resultOfSearch,
    TResult? Function()? loading,
    TResult? Function()? emptyResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Result> results)? resultOfSearch,
    TResult Function()? loading,
    TResult Function()? emptyResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ResultOfSearch value) resultOfSearch,
    required TResult Function(Loading value) loading,
    required TResult Function(EmptyResult value) emptyResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ResultOfSearch value)? resultOfSearch,
    TResult? Function(Loading value)? loading,
    TResult? Function(EmptyResult value)? emptyResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ResultOfSearch value)? resultOfSearch,
    TResult Function(Loading value)? loading,
    TResult Function(EmptyResult value)? emptyResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListScreenStateCopyWith<$Res> {
  factory $ListScreenStateCopyWith(
          ListScreenState value, $Res Function(ListScreenState) then) =
      _$ListScreenStateCopyWithImpl<$Res, ListScreenState>;
}

/// @nodoc
class _$ListScreenStateCopyWithImpl<$Res, $Val extends ListScreenState>
    implements $ListScreenStateCopyWith<$Res> {
  _$ListScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ListScreenStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ListScreenState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Result> results) resultOfSearch,
    required TResult Function() loading,
    required TResult Function() emptyResult,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Result> results)? resultOfSearch,
    TResult? Function()? loading,
    TResult? Function()? emptyResult,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Result> results)? resultOfSearch,
    TResult Function()? loading,
    TResult Function()? emptyResult,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ResultOfSearch value) resultOfSearch,
    required TResult Function(Loading value) loading,
    required TResult Function(EmptyResult value) emptyResult,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ResultOfSearch value)? resultOfSearch,
    TResult? Function(Loading value)? loading,
    TResult? Function(EmptyResult value)? emptyResult,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ResultOfSearch value)? resultOfSearch,
    TResult Function(Loading value)? loading,
    TResult Function(EmptyResult value)? emptyResult,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ListScreenState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ResultOfSearchImplCopyWith<$Res> {
  factory _$$ResultOfSearchImplCopyWith(_$ResultOfSearchImpl value,
          $Res Function(_$ResultOfSearchImpl) then) =
      __$$ResultOfSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Result> results});
}

/// @nodoc
class __$$ResultOfSearchImplCopyWithImpl<$Res>
    extends _$ListScreenStateCopyWithImpl<$Res, _$ResultOfSearchImpl>
    implements _$$ResultOfSearchImplCopyWith<$Res> {
  __$$ResultOfSearchImplCopyWithImpl(
      _$ResultOfSearchImpl _value, $Res Function(_$ResultOfSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$ResultOfSearchImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ));
  }
}

/// @nodoc

class _$ResultOfSearchImpl implements ResultOfSearch {
  const _$ResultOfSearchImpl({required final List<Result> results})
      : _results = results;

  final List<Result> _results;
  @override
  List<Result> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ListScreenState.resultOfSearch(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultOfSearchImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultOfSearchImplCopyWith<_$ResultOfSearchImpl> get copyWith =>
      __$$ResultOfSearchImplCopyWithImpl<_$ResultOfSearchImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Result> results) resultOfSearch,
    required TResult Function() loading,
    required TResult Function() emptyResult,
  }) {
    return resultOfSearch(results);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Result> results)? resultOfSearch,
    TResult? Function()? loading,
    TResult? Function()? emptyResult,
  }) {
    return resultOfSearch?.call(results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Result> results)? resultOfSearch,
    TResult Function()? loading,
    TResult Function()? emptyResult,
    required TResult orElse(),
  }) {
    if (resultOfSearch != null) {
      return resultOfSearch(results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ResultOfSearch value) resultOfSearch,
    required TResult Function(Loading value) loading,
    required TResult Function(EmptyResult value) emptyResult,
  }) {
    return resultOfSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ResultOfSearch value)? resultOfSearch,
    TResult? Function(Loading value)? loading,
    TResult? Function(EmptyResult value)? emptyResult,
  }) {
    return resultOfSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ResultOfSearch value)? resultOfSearch,
    TResult Function(Loading value)? loading,
    TResult Function(EmptyResult value)? emptyResult,
    required TResult orElse(),
  }) {
    if (resultOfSearch != null) {
      return resultOfSearch(this);
    }
    return orElse();
  }
}

abstract class ResultOfSearch implements ListScreenState {
  const factory ResultOfSearch({required final List<Result> results}) =
      _$ResultOfSearchImpl;

  List<Result> get results;
  @JsonKey(ignore: true)
  _$$ResultOfSearchImplCopyWith<_$ResultOfSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ListScreenStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ListScreenState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Result> results) resultOfSearch,
    required TResult Function() loading,
    required TResult Function() emptyResult,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Result> results)? resultOfSearch,
    TResult? Function()? loading,
    TResult? Function()? emptyResult,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Result> results)? resultOfSearch,
    TResult Function()? loading,
    TResult Function()? emptyResult,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ResultOfSearch value) resultOfSearch,
    required TResult Function(Loading value) loading,
    required TResult Function(EmptyResult value) emptyResult,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ResultOfSearch value)? resultOfSearch,
    TResult? Function(Loading value)? loading,
    TResult? Function(EmptyResult value)? emptyResult,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ResultOfSearch value)? resultOfSearch,
    TResult Function(Loading value)? loading,
    TResult Function(EmptyResult value)? emptyResult,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ListScreenState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$EmptyResultImplCopyWith<$Res> {
  factory _$$EmptyResultImplCopyWith(
          _$EmptyResultImpl value, $Res Function(_$EmptyResultImpl) then) =
      __$$EmptyResultImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyResultImplCopyWithImpl<$Res>
    extends _$ListScreenStateCopyWithImpl<$Res, _$EmptyResultImpl>
    implements _$$EmptyResultImplCopyWith<$Res> {
  __$$EmptyResultImplCopyWithImpl(
      _$EmptyResultImpl _value, $Res Function(_$EmptyResultImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyResultImpl implements EmptyResult {
  const _$EmptyResultImpl();

  @override
  String toString() {
    return 'ListScreenState.emptyResult()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyResultImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Result> results) resultOfSearch,
    required TResult Function() loading,
    required TResult Function() emptyResult,
  }) {
    return emptyResult();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Result> results)? resultOfSearch,
    TResult? Function()? loading,
    TResult? Function()? emptyResult,
  }) {
    return emptyResult?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Result> results)? resultOfSearch,
    TResult Function()? loading,
    TResult Function()? emptyResult,
    required TResult orElse(),
  }) {
    if (emptyResult != null) {
      return emptyResult();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ResultOfSearch value) resultOfSearch,
    required TResult Function(Loading value) loading,
    required TResult Function(EmptyResult value) emptyResult,
  }) {
    return emptyResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ResultOfSearch value)? resultOfSearch,
    TResult? Function(Loading value)? loading,
    TResult? Function(EmptyResult value)? emptyResult,
  }) {
    return emptyResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ResultOfSearch value)? resultOfSearch,
    TResult Function(Loading value)? loading,
    TResult Function(EmptyResult value)? emptyResult,
    required TResult orElse(),
  }) {
    if (emptyResult != null) {
      return emptyResult(this);
    }
    return orElse();
  }
}

abstract class EmptyResult implements ListScreenState {
  const factory EmptyResult() = _$EmptyResultImpl;
}
