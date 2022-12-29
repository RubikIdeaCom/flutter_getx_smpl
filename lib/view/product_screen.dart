import 'package:flutter/material.dart';
import 'package:flutter_getx_smpl/controller/product_controller.dart';
import 'package:flutter_getx_smpl/model/product_model.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});

  // Dependency Injection:
  // ProductController productController = Get.put(ProductController(prodcutModel:ProductModel(name: 'نوشابه', price: '100,000', off: '20%').obs));
  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
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
                  val!.name = "لواشک دربند";
                  val.price = "500,000";
                  val.off = "25%";
                });
              },
              child: const Text("Press"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
