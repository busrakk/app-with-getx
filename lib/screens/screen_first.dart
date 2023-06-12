import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/home1_controller.dart';

class ScreenFirst extends StatefulWidget {
  const ScreenFirst({super.key});

  @override
  State<ScreenFirst> createState() => _ScreenFirstState();
}
// depending injection işlemleri
// lazy işlem: ihtiyaç duyulduğunda gerçekleşmesi, sadece 1 injection yapar 

class _ScreenFirstState extends State<ScreenFirst> {
  TextEditingController nameController = TextEditingController();
  // Home1Controller controller = Get.put(Home1Controller(), permanent: true);
  final Home1Controller controller = Get.find<Home1Controller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Screen First"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch, // tüm alanı kaplasın
          children: [
            GetBuilder<Home1Controller>(
              builder: (controller) => Text(
                controller.name.isEmpty ? "EMPTY" : controller.name,
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: MaterialButton(
                onPressed: () {
                  controller.changeName(nameController.text);
                },
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(25)), // köşeleri yuvarlak yap
                child: Container(
                    margin: const EdgeInsets.all(20),
                    child: const Text(
                      "Change and Display name",
                      style: TextStyle(fontSize: 20),
                    )),
              ),
            )
          ],
        ));
  }
}
