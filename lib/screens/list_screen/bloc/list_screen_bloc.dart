import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_screen_event.dart';
part 'list_screen_state.dart';
part 'list_screen_bloc.freezed.dart';

class ListScreenBloc extends Bloc<ListScreenEvent, ListScreenState> {
  ListScreenBloc() : super(const ListScreenState.initial()) {
    on<ListScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
