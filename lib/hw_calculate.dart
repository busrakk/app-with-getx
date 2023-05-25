import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HWClaculate extends StatefulWidget {
  const HWClaculate({super.key});

  @override
  State<HWClaculate> createState() => _HWClaculateState();
}

// ekran genişlik ve yüksekliğini elde etme
class _HWClaculateState extends State<HWClaculate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Height - width Calculate"),
      ),
      body: Center(
        child: Container(
          // normal kullanım
          // height: MediaQuery.of(context).size.height * 0.9,
          // width: MediaQuery.of(context).size.width * 0.9,

          // getx kullanımı
          height: Get.height * 0.9,
          width: Get.width * 0.9,
          color: Colors.purple,
          child: const Center(
            child: Text(
              "Get width & height",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
