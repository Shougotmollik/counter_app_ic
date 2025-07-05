import 'package:counter_app_ic/counter_screen.dart';
import 'package:counter_app_ic/theme/theme.dart';
import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'counter App',
      theme: lightTheme,
      home: CounterScreen(),
    );
  }
}
