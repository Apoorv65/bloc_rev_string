part of 'remove_dup_bloc.dart';

@immutable
abstract class RemoveDupState {}

class RemoveDupInitial extends RemoveDupState {

  List array;
  RemoveDupInitial({required this.array});

}

class RemoveDuplicateValueState extends RemoveDupInitial {
  RemoveDuplicateValueState(): super(array:[]);
}
