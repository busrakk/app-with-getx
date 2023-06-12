
// import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:getx/controllers/home1_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(Home1Controller());
  }
}