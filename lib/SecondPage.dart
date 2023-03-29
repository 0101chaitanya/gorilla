import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        backgroundColor: Colors.purple,
      ),
      body: const Center(
        child: Text(
          "Second Page",
          style: TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}
