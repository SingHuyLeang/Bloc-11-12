import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_11_12/bloc/counter_bloc.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Second Screen"),
          ),
          body: Center(
            child: Text(
              state.counter.toString(),
              style: const TextStyle(fontSize: 40),
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterBloc>().add(DecrementEvent());
                },
                tooltip: '3',
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterBloc>().add(IncrementEvent());
                },
                tooltip: '4',
                child: const Icon(Icons.add),
              ),
            ],
          ),
        );
      },
    );
  }
}
