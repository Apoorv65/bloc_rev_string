import 'package:bloc_rev_string/rev_Bloc/rev_string_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _noteController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: BlocBuilder<RevStringBloc, String>(
          builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                      controller: _noteController,
                      decoration: const InputDecoration(
                          hintText: 'Type here...',
                          label: Text('Note'))
                  ),
                  ElevatedButton(
                      onPressed: (){
                        BlocProvider.of<RevStringBloc>(context).add(RevEvent(note: _noteController.text));
                      },
                      child: const Text('Reverse it...')),
                  Text(state),
                ],
            ),
              );

          },
        ),
      ),
    );
  }
}
