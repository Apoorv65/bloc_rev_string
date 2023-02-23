import 'package:bloc_rev_string/PalindromeStr/str_palindrome_bloc.dart';
import 'package:bloc_rev_string/remove_dup_Str/remove_dup_bloc.dart';
import 'package:bloc_rev_string/rev_Bloc/rev_string_bloc.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  blocTest(
    'Is Reverse?',
    build: () => RevStringBloc(),
    act: (bloc) => bloc.add(RevEvent(note: 'goal')),
    expect: () => ['laog'],
  );

  blocTest(
    'remove duplicate values',
    build: () => RemoveDupBloc(),
    act: (bloc) => bloc.add(RemoveDuplicateValueEvent(
        array: ['a', 'b', 'c', 'd', 'e', 'f', 'd', 'e', 'f', 'g', 'h', 'i'])),
    expect: () => [
      ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i']
    ],
  );

  blocTest(
    'Is Palindrome?',
    build: () => StrPalindromeBloc(),
    act: (bloc) => bloc.add(PalindromeStringEvent(note: 'abcdcba')),
    expect: () => [true],
  );
}
