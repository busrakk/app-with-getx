import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNumbersController extends GetxController {
  final TextEditingController number1Controller = TextEditingController();
  final TextEditingController number2Controller = TextEditingController();
  RxInt sum = RxInt(0);

  void calculateSum() {
    int number1 = int.tryParse(number1Controller.text) ?? 0;
    int number2 = int.tryParse(number2Controller.text) ?? 0;
   

  }
}