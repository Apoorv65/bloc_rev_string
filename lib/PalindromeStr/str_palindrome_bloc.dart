import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'str_palindrome_event.dart';
part 'str_palindrome_state.dart';

class StrPalindromeBloc extends Bloc<StrPalindromeEvent, bool> {
  StrPalindromeBloc() : super(false) {
    on<PalindromeStringEvent>((event, emit) => emit(isPalindrome(event.note!)));
  }

  bool isPalindrome(String word) {
    for (int i = 0; i < word.length ~/ 2; i++) {
      if (word[i] != word[word.length - i - 1]) {
        return false;
      }
    }
    return true;
  }
}

