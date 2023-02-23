import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'rev_string_event.dart';
part 'rev_string_state.dart';

class RevStringBloc extends Bloc<RevStringEvent, String> {
  RevStringBloc() : super('') {
    on<RevEvent>((event, emit) {
      emit(event.note.toString().split('').reversed.join());
    });
  }
}


