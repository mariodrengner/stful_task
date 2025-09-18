import 'package:flutter/material.dart';
import 'package:stful_task/counter_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<int> _values = List.filled(5, 0);

  void _update(int index, int newValue) {
    setState(() {
      _values[index] = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {

    final int total = _values.reduce((a, b) => a + b);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            for (int i = 0; i < _values.length; i++)
              CounterCard(onChanged: (val) => _update(i, val)),
            const Divider(),
            Text('Total: $total')
          ],
        ),
      ),
    );
  }
}
