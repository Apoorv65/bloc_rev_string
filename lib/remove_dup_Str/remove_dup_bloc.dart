import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'remove_dup_event.dart';
part 'remove_dup_state.dart';

class RemoveDupBloc extends Bloc<RemoveDupEvent, List> {
  RemoveDupBloc() : super([]) {
    on<RemoveDuplicateValueEvent>((event, emit) {
      emit(event.array.toSet().toList());
    });
  }
}

/*

unifyList(List<dynamic> list) {
  for (int i = 0; i < list.length; i++) {
    dynamic o = list[i];
    int index;
    do {
      index = list.indexOf(o, i+1);
      if (index != -1) {
        list.removeRange(index, 1);
      }
    } while (index != -1);
  }
}
*/


/*
extension ListExtensions<T> on List<T> {
  Iterable<T> whereWithIndex(bool test(T element, int index)) {
    final List<T> result = [];
    for (var i = 0; i < this.length; i++) {
      if (test(this[i], i)) {
        result.add(this[i]);
      }
    }
    return result;
  }
}
*/
