import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  final TextEditingController _number1Controller = TextEditingController();
  final TextEditingController _number2Controller = TextEditingController();
  int _result = 0;

  void _calculateSum() {
    int number1 = int.tryParse(_number1Controller.text) ?? 0;
    int number2 = int.tryParse(_number2Controller.text) ?? 0;

    setState(() {
      _result = number1 + number2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sayıları Topla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: ListTile(
                title: const Center(
                    child: Text("Open",
                        style: TextStyle(
                          color: Colors.blue,
                        ))),
                onTap: () {
                  Get.defaultDialog(
                    title: "enter 2 numbers",
                    content: Column(
                      children: [
                        TextField(
                          controller: _number1Controller,
                          // controller: controller.number1Controller,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Sayı 1',
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          controller: _number2Controller,
                          // controller: controller.number2Controller,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Sayı 2',
                          ),
                        ),
                      ],
                    ),
                    confirm: TextButton(
                      onPressed: () {
                        // controller.calculateSum();
                        _calculateSum();
                        Get.back();
                      },
                      child: const Text("ADD"),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Text('Result: $_result')
            // GetBuilder<AddNumbersController>(
            //  /// init: AddNumbersController(),
            //   builder: (controller) {
            //     return Text(
            //       'Result: $_result',
            //       style: const TextStyle(fontSize: 24),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
