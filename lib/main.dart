import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First App"), centerTitle: true),
      body: Center(child: Text("Hello Gaurav Basnet ")),
    );
  }
}
