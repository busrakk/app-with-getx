import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screens/screen_first.dart';
import 'package:getx/screens/screen_second.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  // final controller = Get.lazyPut(() => Home1Controller());
  // final controller = Get.put(Home1Controller()); // bindings klasörü oluşturulduğu için kullanılmadı

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Screen Home 1"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch, // tüm alanı kaplasın
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: MaterialButton(
                onPressed: () {
                  Get.to(() => const ScreenFirst());
                },
                color: Colors.red,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(25)), // köşeleri yuvarlak yap
                child: Container(
                    margin: const EdgeInsets.all(20),
                    child: const Text(
                      "Navigate to First Screen",
                      style: TextStyle(fontSize: 20),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: MaterialButton(
                onPressed: () {
                  Get.to(() => const ScreenSecond());
                },
                color: Colors.green,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(25)), // köşeleri yuvarlak yap
                child: Container(
                    margin: const EdgeInsets.all(20),
                    child: const Text(
                      "Navigate to Second Screen",
                      style: TextStyle(fontSize: 20),
                    )),
              ),
            )
          ],
        ));
  }
}
