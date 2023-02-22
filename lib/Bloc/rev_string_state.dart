part of 'rev_string_bloc.dart';

abstract class RevStringState {}

class RevString extends RevStringState{
  String? note;
  RevString({this.note});

}

class RevStringInitial extends RevString {
  RevStringInitial():super(note: '');
}

