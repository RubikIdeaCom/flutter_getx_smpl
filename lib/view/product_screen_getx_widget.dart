import 'package:flutter/material.dart';
import 'package:flutter_getx_smpl/controller/product_controller.dart';
import 'package:get/get.dart';

class ProductScreenGetx extends StatelessWidget {
  ProductScreenGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX(
              autoRemove: true, // Auto remove state
              // Set state dispose policy:
              dispose: ((state) {
                state.dispose();
              }),
              init: ProductController(),
              builder: (ProductController productController) {
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
              },
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<ProductController>().prodcutModel.update((val) {
                  val!.name = 'شیر کاکائو';
                  val.price = '300,000';
                  val.off = '17%';
                });
              },
              child: const Text("Press"),
            ),
          ],
        ),
      ),
    );
  }
}
