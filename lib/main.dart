import 'package:dadu_app/home/home_binding.dart';
import 'package:dadu_app/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      getPages: [
        GetPage(name: "/home", page: () => Homescreen(), binding: Homebinding())
      ],
    );
  }
}
