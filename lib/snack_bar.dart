import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({super.key});

  @override
  State<SnackBarScreen> createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Example"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "Warning", "Check comments",
            backgroundColor: Colors.red,
            colorText: Colors.white,
            duration: const Duration(seconds: 5), // 5 sn kalsın
            titleText: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add_a_photo),
                label: const Text("Add a photo")),
            messageText: Image.network("https://picsum.photos/200/300"),
            snackPosition: SnackPosition.BOTTOM,
            onTap: (snack) {
              print(snack);
            },
          ); // warning mesaj alt taraftan gelsin
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
