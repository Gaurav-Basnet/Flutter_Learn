import 'package:first_app/data/notifiers.dart';
import 'package:first_app/frames/widgettree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeNotifier,
      builder: (context, ThemeMode mode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Day 2 Flutter',
          themeMode: mode,
          home: Widgettree(),
        );
      },
    );
  }
}
