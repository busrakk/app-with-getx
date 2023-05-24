import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenOne(),
                    ));
              },
              child: const Text(
                "Go to next screen",
                style: TextStyle(fontSize: 25),
              )),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text(
                "Back",
                style: TextStyle(fontSize: 25),
              )),
          ElevatedButton(
              onPressed: () {
                // bütün pageleri kaldır
                // klasik yöntem
                // Navigator.pushAndRemoveUntil(
                //     context,
                //     MaterialPageRoute(builder: (context) => const HomeScreen()),
                //     (route) => false);
                Get.offAll(const HomeScreen());
              },
              child: const Text(
                "Back All",
                style: TextStyle(fontSize: 25),
              )),
        ]),
      ),
    );
  }
}
