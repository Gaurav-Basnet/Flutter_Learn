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
  int hours = 0;
  int day = 0;

  Timer? timer;
  bool isRunning = false;

  void startTimer() {
    if (isRunning) return;

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        seconds++;
        if (seconds == 60) {
          seconds = 0;
          minutes++;
        }
        if (minutes == 60) {
          minutes = 0;
          hours++;
        }
        if (hours == 24) {
          hours = 0;
          day++;
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
      seconds = 0;
      minutes = 0;
      hours = 0;
      day = 0;
      isRunning = false;
    });
  }

  String twoDigits(int n) => n.toString().padLeft(2, '0');

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
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Text(
                      "${twoDigits(hours)} : ${twoDigits(minutes)} : ${twoDigits(seconds)}",
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                    if (day > 0)
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          "$day Day(s)",
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  onPressed: startTimer,
                  child: const Text("Start"),
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  onPressed: stopTimer,
                  child: const Text("Stop"),
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
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
