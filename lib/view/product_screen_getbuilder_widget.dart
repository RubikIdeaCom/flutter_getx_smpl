import 'package:flutter/material.dart';
import 'package:flutter_getx_smpl/controller/product_getbuilder_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_smpl/model/product_model.dart';

class ProductScreenGetBuilder extends StatelessWidget {
  ProductScreenGetBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<ProductGetBuilderController>(
              init: ProductGetBuilderController(),
              builder:
                  (ProductGetBuilderController productGetBuilderController) {
                return Column(
                  children: [
                    Text(
                        'Product name: ${productGetBuilderController.productModel.name}',
                        style: const TextStyle(fontSize: 20)),
                    Text(
                        'Product price: ${productGetBuilderController.productModel.price}',
                        style: const TextStyle(fontSize: 20)),
                    Text(
                        'Product off: ${productGetBuilderController.productModel.off}',
                        style: const TextStyle(fontSize: 20)),
                  ],
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<ProductGetBuilderController>().setNewProduct();
              },
              child: const Text('Press'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.delete<ProductGetBuilderController>();
              },
              child: const Text('Close'),
            ),
          ],
        ),
      ),
    );
  }
}
