import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_11_12/provider/counter.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Text(
          context.watch<Counter>().counter.toString(),
          style: const TextStyle(fontSize: 40),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<Counter>().decrement(),
            tooltip: '1',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () => context.read<Counter>().increment(),
            tooltip: '2',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
