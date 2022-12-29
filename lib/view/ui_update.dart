import 'package:flutter/material.dart';
import 'package:flutter_getx_smpl/model/product_model.dart';
import 'package:get/get.dart';

class UIUpdate extends StatelessWidget {
  UIUpdate({super.key});

  RxBool status = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx((() {
              return status.isTrue
                  ? const Text("true")
                  : const Icon(Icons.car_crash);
            })),
            ElevatedButton(
              onPressed: () {
                status.isTrue ? status.value = false : status.value = true;
              },
              child: const Text("Press"),
            )
          ],
        ),
      ),
    );
  }
}
