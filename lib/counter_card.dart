import 'package:flutter/material.dart';

class CounterCard extends StatefulWidget {
  final ValueChanged<int> onChanged;

  const CounterCard({super.key, required this.onChanged});

  @override
  State<CounterCard> createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    widget.onChanged(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Zähler: $_counter'),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
