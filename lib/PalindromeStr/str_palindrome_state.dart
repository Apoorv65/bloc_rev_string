part of 'str_palindrome_bloc.dart';

@immutable
abstract class StrPalindromeState {}

class StrPalindromeInitial extends StrPalindromeState {
  String? note;
  StrPalindromeInitial({this.note});
}

class PalindromeStringState extends StrPalindromeInitial {
  PalindromeStringState() : super(note: '');
}
