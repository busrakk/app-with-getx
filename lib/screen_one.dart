import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
      ),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Text(
            "Screen one",
            style: TextStyle(fontSize: 25),
          ),
          ElevatedButton(
              onPressed: () {
                // klasik yöntem
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const ScreenTwo(),
                //     ));

                // getx kullanımı
                // Get.to(() => const ScreenTwo());

                // name ile gönderim
                Get.toNamed("/screen2", arguments: ['Screen 2', "args2"]);
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
                "Go to back screen",
                style: TextStyle(fontSize: 25),
              )),
        ]),
      ),
    );
  }
}
