// state nesnesi ya da classı


import 'package:get/get_state_manager/get_state_manager.dart';

class Home1Controller extends GetxController{
  String name = "";

  void changeName(String newName){
    name = newName;
    update(); // GetBuilder kullanılacak ve name değiştiğinde oradaki ifadenin yeniden değişmesi için kullanıldı.
  }
}

