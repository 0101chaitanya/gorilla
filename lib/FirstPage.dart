import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:developer' as dev;

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        //controls what happend when back button is pressed
        dev.log("willpopscope is run");
        number = Random().nextInt(100);
        Navigator.pop(context, number);
        //if true then screen is allowed to pop (going back)
        // else screen is not popped
        return Future.value(false);
        // return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("First Page"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            children: [
              const Text(
                "First Page",
                style: TextStyle(fontSize: 36),
              ),
              ElevatedButton(
                  onPressed: () {
                    number = Random().nextInt(100);
                    Navigator.pop(context, number);
                    // Navigator.of(context).pop(number);
                  },
                  child: const Text(
                    "Back button",
                    style: TextStyle(fontSize: 36),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
