import 'package:get/get.dart';

class HomeController extends GetxController {
  String name = "John Doe";
  // int counter = 0;

// 3de aynı kullanım
//  RxInt counter = RxInt(0);
//  final counter = Rx<int>(0);
  RxInt counter = 0.obs;

  void incrementCount() {
    counter.value = counter.value == 10 ? 0 : counter.value + 1;
    // update(); // provider notifyListeners
  }

  void decrementCount() {
    counter.value = counter.value == 0 ? 10 : counter.value - 1;
    //update();
  }
}
