import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultDialog extends StatefulWidget {
  const DefaultDialog({super.key});

  @override
  State<DefaultDialog> createState() => _DefaultDialogState();
}

class _DefaultDialogState extends State<DefaultDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Default dialog"),
        ),
        body: Column(
          children: [
            Card(
              child: ListTile(
                title: const Text("GetX Dialog Alert"),
                subtitle: const Text("GetX dialog alert with getx"),
                onTap: () {
                  Get.defaultDialog(
                      // basıldığında açılan alert
                      title: 'delete chat',
                      titlePadding: const EdgeInsets.only(top: 20),
                      contentPadding: const EdgeInsets.all(20),
                      content: const Column(
                        children: [
                          Text("File-1"),
                          Text("File-1"),
                          Text("File-1"),
                          TextField(),
                        ],
                      ),
                      confirm: TextButton(
                          onPressed: () {
                            Get.back(); // son açılan pencereyi kapat
                          },
                          child: const Text('Confirm')),
                      cancel: TextButton(
                          onPressed: () {}, child: const Text('Cancel')),
                      middleText: 'are you sure?');
                },
              ),
            )
          ],
        ));
  }
}
