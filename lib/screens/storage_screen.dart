import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/storage_controller.dart';

class StorageScreen extends StatefulWidget {
  const StorageScreen({super.key});

  @override
  State<StorageScreen> createState() => _StorageScreenState();
}

class _StorageScreenState extends State<StorageScreen> {
  StorageController storageController = Get.put(StorageController());
  TextEditingController prefController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("storage screen"),
        ),
        body: Obx(() => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    storageController.getPref(),
                    style: const TextStyle(fontSize: 35),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    child: TextField(
                      controller: prefController,
                      decoration:
                          const InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: MaterialButton(
                      onPressed: () {
                        storageController.savePref(prefController.text);
                      },
                      color: Colors.blue,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              25)), // köşeleri yuvarlak yap
                      child: Container(
                          margin: const EdgeInsets.all(20),
                          child: const Text(
                            "save preference",
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                  )
                ],
              ),
            )));
  }
}
