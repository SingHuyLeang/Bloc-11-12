import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_11_12/getx/counter.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});
  final counterX = Get.put(CounterX());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterX>(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Second Screen"),
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
      );
    });
  }
}
