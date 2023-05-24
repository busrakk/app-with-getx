import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeTheme extends StatefulWidget {
  const ChangeTheme({super.key});

  @override
  State<ChangeTheme> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Theme"),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text("Select Your Theme"),
            subtitle: const Text("Dark/Light Mode"),
            onTap: () {
              Get.bottomSheet(Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.dark_mode,
                        color: Colors.white,
                      ),
                      title: const Text("Dark Mode"),
                      tileColor: Colors.black,
                      textColor: Colors.white,
                      onTap: () {
                        Get.changeTheme(ThemeData.dark());
                        Get.back();
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.light_mode,
                        color: Colors.white,
                      ),
                      title: const Text("Light Mode"),
                      tileColor: Colors.blue,
                      textColor: Colors.white,
                      onTap: () {
                        Get.changeTheme(ThemeData.light());
                        Get.back();
                      },
                    )
                  ],
                ),
              ));
            },
          )
        ],
      ),
    );
  }
}
