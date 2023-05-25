import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx/controllers/home_controller.dart';

class StateMang extends StatefulWidget {
  const StateMang({super.key});

  @override
  State<StateMang> createState() => _StateMangState();
}

class _StateMangState extends State<StateMang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetBuilder - State Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // init: varolan state initialization etme - nesne türetilmesini sağlar
          // builder: hangi state yönetilecek
          children: [
            GetBuilder<HomeController>(
              builder: (controller) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    controller.name,
                    style: const TextStyle(fontSize: 30),
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
