import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/add_number.dart';

class AddNumbersScreen extends StatelessWidget {
  final AddNumbersController controller = Get.find();

  AddNumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sayıları Ekle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller.number1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Sayı 1',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: controller.number2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Sayı 2',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.calculateSum();
                Get.back();
              },
              child: const Text('Ekle'),
            ),
          ],
        ),
      ),
    );
  }
}