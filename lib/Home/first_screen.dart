import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_11_12/Home/second_screen.dart';
import 'package:state_management_11_12/bloc/counter_bloc.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("First Screen"),
            actions: [
              IconButton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecondScreen(),
                        ),
                      ),
                  icon: const Icon(Icons.forward)),
            ],
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
                tooltip: '1',
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterBloc>().add(IncrementEvent());
                },
                tooltip: '2',
                child: const Icon(Icons.add),
              ),
            ],
          ),
        );
      },
    );
  }
}
