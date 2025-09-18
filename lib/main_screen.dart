import 'package:flutter/material.dart';
import 'package:stful_task/counter_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            CounterCard(),
            CounterCard(),
            CounterCard(),
            CounterCard(),
            CounterCard(),
          ],
        ),
      ),
    );
  }
}
