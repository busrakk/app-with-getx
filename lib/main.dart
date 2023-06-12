import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/bindings/home_binding.dart';
import 'package:getx/home_screen.dart';
import 'package:getx/languages/languages.dart';
import 'package:getx/screen_one.dart';
import 'package:getx/screen_two.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx/screens/storage_screen.dart';

void main() async {
  await GetStorage.init(); // uygulama içinde storage erişme
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // sayfalama
      getPages: [
        GetPage(name: "/", page: () => const HomeScreen()),
        GetPage(name: "/screen1", page: () => const ScreenOne()),
        GetPage(name: "/screen2", page: () => const ScreenTwo()),
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StorageScreen(),
      initialBinding:
          HomeBinding(), // bindings klasörü için eklendi - uygulama çalışır çalışmaz state management nesnesi oluşturulur

      locale: const Locale('en', 'US'), // varsayılan dil
      translations: Languages(),
    );
  }
}
