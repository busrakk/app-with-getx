
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageController extends GetxController {
  GetStorage storage = GetStorage(); // storage nesnesi
  RxString preference = "".obs; // state management nesnesi
  final String prefKey = "pref";

  StorageController() {
    storage.listen(() => print("storage has changed"));
  }

  void savePref(String pref) async {
    preference.value = pref;
    await storage.write(prefKey, pref);
  }

  String getPref(){
    preference.value = storage.read<String>(prefKey) ?? "-";
    return preference.value;
  }

  void deletePref() async {
    preference.value = "";
    await storage.remove(prefKey);
  }
}
