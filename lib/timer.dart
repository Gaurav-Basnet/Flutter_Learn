import 'dart:async';
import 'package:flutter/material.dart';

class SimpleStopwatch extends StatefulWidget {
  const SimpleStopwatch({super.key});

  @override
  State<SimpleStopwatch> createState() => _SimpleStopwatchState();
}

class _SimpleStopwatchState extends State<SimpleStopwatch> {
  int seconds = 0;
  int minutes = 0;
  Timer? timer;
  bool isRunning = false;

  void startTimer() {
    if (isRunning) return;

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        seconds++;
        if (seconds % 60 == 0) {
          minutes++;
          seconds = 0;
        }
      });
    });

    setState(() {
      isRunning = true;
    });
  }

  void stopTimer() {
    timer?.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void resetTimer() {
    timer?.cancel();
    setState(() {
      minutes = 0;
      seconds = 0;
      isRunning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 7 – Simple Stopwatch"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$minutes m",
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            Text(
              "$seconds s",
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: startTimer,
                  child: const Text("Start"),
                ),
                const SizedBox(width: 15),
                ElevatedButton(onPressed: stopTimer, child: const Text("Stop")),
                const SizedBox(width: 15),
                ElevatedButton(
                  onPressed: resetTimer,
                  child: const Text("Reset"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
