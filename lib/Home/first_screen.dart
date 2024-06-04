import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_11_12/Home/second_screen.dart';
import 'package:state_management_11_12/getx/counter.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});

  final counterX = Get.put(CounterX());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterX>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("First Screen"),
          actions: [
            IconButton(
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(),
                      ),
                    ),
                icon: const Icon(Icons.forward)),
          ],
        ),
        body: Center(
          child: Text(
            counterX.counter.value.toString(),
            style: const TextStyle(fontSize: 40),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () async => counterX.decremment(),
              tooltip: '1',
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () async => counterX.incremment(),
              tooltip: '2',
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
