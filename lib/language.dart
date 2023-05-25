import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app_title".tr),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("question".tr),
            subtitle: Text("answer".tr),
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () async {
                    await Get.updateLocale(const Locale('en', 'US'));
                  },
                  child: const Text("English")),
              OutlinedButton(
                  onPressed: () async {
                    await Get.updateLocale(const Locale('tr', 'TR'));
                  },
                  child: const Text("Türkçe")),
            ],
          )
        ],
      ),
    );
  }
}
