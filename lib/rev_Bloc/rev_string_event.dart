part of 'rev_string_bloc.dart';

@immutable
abstract class RevStringEvent {}

class RevEvent extends RevStringEvent{
  final String? note;
  RevEvent({this.note});
}
