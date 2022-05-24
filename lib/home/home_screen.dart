import 'package:dadu_app/home/home_controll.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Homescreen extends StatelessWidget {
  Homescreen({Key? key}) : super(key: key);

  late Homecontroll homecontroll;

  @override
  Widget build(BuildContext context) {
    homecontroll = Get.find<Homecontroll>();
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Dadu App"),
        centerTitle: true,
      ),
      body: _daduPage(),
    );
  }

  Widget _daduPage() {
    return Center(
      child: Obx(
        () => Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  homecontroll.changeDiceFace();
                },
                child: Image.asset(
                    "assets/images/dice${homecontroll.leftDiceNumber}.png"),
              ),
            ),
            const SizedBox(width: 3),
            Expanded(
              child: TextButton(
                onPressed: () {
                  homecontroll.changeDiceFace();
                },
                child: Image.asset(
                    "assets/images/dice${homecontroll.rightDiceNumber}.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
