
import 'package:flutter/material.dart';
import 'package:flutter_professional_counter/features/counter/counter_screen.dart';

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }

}