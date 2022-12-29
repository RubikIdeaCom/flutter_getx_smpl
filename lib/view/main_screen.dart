import 'package:flutter/material.dart';
import 'package:flutter_getx_smpl/controller/product_controller.dart';
import 'package:flutter_getx_smpl/model/product_model.dart';
import 'package:flutter_getx_smpl/view/product_screen.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  // Dependency Injection:
  // ProductController productController = Get.put(ProductController(prodcutModel:ProductModel(name: 'بستنی کیم', off: '50%', price: '150,000').obs));
  ProductController productController = Get.put(ProductController());

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
                  Text(
                      'Product name: ${productController.prodcutModel.value.name}',
                      style: const TextStyle(fontSize: 20)),
                  Text(
                      'Product price: ${productController.prodcutModel.value.price}',
                      style: const TextStyle(fontSize: 20)),
                  Text(
                      'Product off: ${productController.prodcutModel.value.off}',
                      style: const TextStyle(fontSize: 20)),
                ],
              );
            })),
            ElevatedButton(
              onPressed: () {
                productController.prodcutModel.update((val) {
                  val!.name = "چیپس";
                  val.price = "300,000";
                  val.off = "20%";
                });
              },
              child: const Text("Press"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(ProductScreen());
              },
              child: const Text("Go"),
            ),
          ],
        ),
      ),
    );
  }
}
