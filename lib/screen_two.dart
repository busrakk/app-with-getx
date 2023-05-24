import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home_screen.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${Get.arguments[0]}"),
      ),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Text(
            "Screen two",
            style: TextStyle(fontSize: 25),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Go to back screen",
                style: TextStyle(fontSize: 25),
              )),
          ElevatedButton(
              onPressed: () {
                Get.off(const HomeScreen());
              },
              child: const Text(
                "Go to home screen",
                style: TextStyle(fontSize: 25),
              )),
        ]),
      ),
    );
  }
}
