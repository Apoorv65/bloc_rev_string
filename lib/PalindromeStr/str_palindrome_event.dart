part of 'str_palindrome_bloc.dart';

@immutable
abstract class StrPalindromeEvent {}

class PalindromeStringEvent extends StrPalindromeEvent{
  final String? note;
  PalindromeStringEvent({this.note});
}
