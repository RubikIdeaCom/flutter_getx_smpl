import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  var counter = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx((() {
              return Text('Counter: $counter',
                  style: const TextStyle(fontSize: 30));
            })),
            ElevatedButton(
              onPressed: () {
                counter = counter + 1;
              },
              child: null,
            )
          ],
        ),
      ),
    );
  }
}
