import 'package:flutter/material.dart';

class Userinput extends StatefulWidget {
  const Userinput({super.key});

  @override
  State<Userinput> createState() => _UserinputState();
}

class _UserinputState extends State<Userinput> {
  final TextEditingController colorController = TextEditingController();
  final TextEditingController sizeController = TextEditingController();

  Color textColor = Colors.black;
  double textSize = 18;

  void applyStyle() {
    setState(() {
      // Set font size
      textSize = double.tryParse(sizeController.text) ?? 18;

      // Set color based on user input
      switch (colorController.text.toLowerCase()) {
        case "red":
          textColor = Colors.red;
          break;
        case "blue":
          textColor = Colors.blue;
          break;
        case "green":
          textColor = Colors.green;
          break;
        case "purple":
          textColor = Colors.purple;
          break;
        default:
          textColor = Colors.black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Input")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: colorController,
              decoration: const InputDecoration(
                labelText: "Color Name (red, blue, green)",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: sizeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Text Size",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: applyStyle, child: const Text("Apply")),
            const SizedBox(height: 30),
            Text(
              "Example Text",
              style: TextStyle(fontSize: textSize, color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
