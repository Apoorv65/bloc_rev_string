import 'package:bloc_rev_string/Bloc/rev_string_bloc.dart';
import 'package:bloc_test/bloc_test.dart';


void main() {
  blocTest(
    'Is Reverse?',
    build: () => RevStringBloc(),
    act: (bloc) => bloc.add(RevEvent(note: 'goal')),
    expect: () => ['laog'],
  );
}
