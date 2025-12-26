import 'package:flutter/material.dart';

class Rowsandcolumn extends StatelessWidget {
  const Rowsandcolumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row & Column Example"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Column Widget",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.red,
                  child: const Center(
                    child: Text("1", style: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.blue,
                  child: const Center(
                    child: Text("2", style: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.green,
                  child: const Center(
                    child: Text("3", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              color: Colors.deepPurple,
              child: const Center(
                child: Text(
                  "This is inside a Column",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
