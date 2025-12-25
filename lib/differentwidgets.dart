import 'package:flutter/material.dart';

class Differentwidgets extends StatefulWidget {
  const Differentwidgets({super.key});

  @override
  State<Differentwidgets> createState() => _DifferentwidgetsState();
}

class _DifferentwidgetsState extends State<Differentwidgets> {
  bool isChecked = false;
  double sliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Day 4 – Different Widgets")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text
            const Text(
              "Text Widget",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text("This is a simple Text widget"),

            const SizedBox(height: 20),

            // Button
            const Text(
              "Button Widget",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Click Me")),

            const SizedBox(height: 20),

            // Icon
            const Text(
              "Icon Widget",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Icon(Icons.favorite, color: Colors.red, size: 30),

            const SizedBox(height: 20),

            // Checkbox
            const Text(
              "Checkbox Widget",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),

            const SizedBox(height: 20),

            // Slider
            const Text(
              "Slider Widget",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: sliderValue,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            Text("Slider Value: ${sliderValue.toInt()}"),

            const SizedBox(height: 20),

            // Card
            const Text(
              "Card Widget",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: const Text("This is a Card widget"),
              ),
            ),

            const SizedBox(height: 20),

            // Image (Network)
            const Text(
              "Image Widget",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Image.network(
              "https://flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png",
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
