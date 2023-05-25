import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx/controllers/home_controller.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen one"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // init: varolan state initialization etme - nesne türetilmesini sağlar
          // builder: hangi state yönetilecek
          children: [
            GetX<HomeController>(
              builder: (controller) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "SCREEN ONE",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    controller.counter.toString(),
                    style: const TextStyle(fontSize: 30, color: Colors.red),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            controller.incrementCount();
                          },
                          child: const Icon(Icons.plus_one)),
                      ElevatedButton(
                          onPressed: () {
                            controller.decrementCount();
                          },
                          child: const Icon(Icons.exposure_minus_1))
                    ],
                  )
                ],
              ),
              init: HomeController(),
            )
          ],
        ),
      ),
    );
  }
}
