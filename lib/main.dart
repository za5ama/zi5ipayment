import 'package:flutter/material.dart';
import 'screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'zi5i',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 255, 0, 111)),
      ),
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
      )
      
    ;
  }
}

