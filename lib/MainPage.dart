import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gorilla/FirstPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const FirstPage();
                  },
                )).then((value) {
                  number = value;
                  log(value.toString());
                });

                /*Navigator.of(context).push
                 (MaterialPageRoute(
                  builder: (context) => const FirstPage(),
                ));*/
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple.shade200),
              child: const Text("First Page"),
            )
          ],
        ),
      ),
    );
  }
}
