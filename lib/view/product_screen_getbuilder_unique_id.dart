import 'package:flutter/material.dart';
import 'package:flutter_getx_smpl/controller/product_getbuilder_unique_id_controller.dart';
import 'package:get/get.dart';

class ProductScreenGetBuilderUniqueId extends StatelessWidget {
  const ProductScreenGetBuilderUniqueId({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.find<ProductGetBuilderUniqueIdController>()
                        .setNewProduct(index);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: GetBuilder<ProductGetBuilderUniqueIdController>(
                        id: index,
                        init: ProductGetBuilderUniqueIdController(),
                        builder: (ProductGetBuilderUniqueIdController
                            productGetBuilderController) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
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
                    ),
                  ),
                );
              }))),
    );
  }
}
