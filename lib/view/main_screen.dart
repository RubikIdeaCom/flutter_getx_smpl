import 'package:flutter/material.dart';
import 'package:flutter_getx_smpl/model/product_model.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  Rx<ProductModel> prodcutModel =
      ProductModel(name: "پفک نمکی", price: "200000", off: "10%").obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx((() {
              return Column(
                children: [
                  Text('Product name: ${prodcutModel.value.name}',
                      style: const TextStyle(fontSize: 20)),
                  Text('Product price: ${prodcutModel.value.price}',
                      style: const TextStyle(fontSize: 20)),
                  Text('Product off: ${prodcutModel.value.off}',
                      style: const TextStyle(fontSize: 20)),
                ],
              );
            })),
            ElevatedButton(
              onPressed: () {},
              child: null,
            )
          ],
        ),
      ),
    );
  }
}
