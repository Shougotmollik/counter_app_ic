import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Redesigned Counter App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Current Value', style: theme.headlineMedium),
              const SizedBox(height: 10),
              Text(
                '$_counter',
                style: theme.headlineMedium?.copyWith(fontSize: 48),
              ),
              const SizedBox(height: 30),
              Wrap(
                children: [
                  ElevatedButton.icon(
                    onPressed: _decrement,
                    icon: const Icon(Icons.remove),
                    label: const Text('Decrease'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton.icon(
                    onPressed: _reset,
                    icon: const Icon(Icons.refresh),
                    label: const Text('Reset'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                    ),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton.icon(
                    onPressed: _increment,
                    icon: const Icon(Icons.add),
                    label: const Text('Increase'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }
}
