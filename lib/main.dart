import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_11_12/Home/first_screen.dart';
import 'package:state_management_11_12/provider/counter.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Counter()),
      ],
      child: const MaterialApp(
        home: FirstScreen(),
      ),
    );
  }
}
