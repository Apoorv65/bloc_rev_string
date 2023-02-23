part of 'remove_dup_bloc.dart';

@immutable
abstract class RemoveDupEvent {}

class RemoveDuplicateValueEvent extends RemoveDupEvent{

  List array;
  RemoveDuplicateValueEvent({required this.array});

}
