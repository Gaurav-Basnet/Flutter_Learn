import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  void increaseCounter() {
    setState(() {
      count++;
    });
  }

  String getMessage() {
    if (count == 0) {
      return "Press the button to start!";
    } else {
      return "You clicked $count times";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Day 2 Simple Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(getMessage(), style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: increaseCounter,
              child: const Text("Click Me"),
            ),
          ],
        ),
      ),
    );
  }
}
