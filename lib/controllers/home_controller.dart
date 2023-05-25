import 'package:get/get.dart';

class HomeController extends GetxController {
  String name = "John Doe";
  int counter = 0;

  void incrementCount() {
    counter = counter == 10 ? 0 : counter + 1;
    update(); // provider notifyListeners
  }

  void decrementCount() {
    counter = counter == 0 ? 10 : counter - 1;
    update();
  }
}
