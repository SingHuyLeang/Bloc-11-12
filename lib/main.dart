import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_11_12/Home/first_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: FirstScreen(),
    );
  }
}
