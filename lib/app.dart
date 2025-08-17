
import 'package:flutter/material.dart';
import 'package:flutter_professional_counter/features/counter/counter_screen.dart';

import 'core/theme/app_theme.dart';

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Professional Counter',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }

}