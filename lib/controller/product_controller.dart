import 'package:flutter_getx_smpl/model/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  Rx<ProductModel> prodcutModel;
  // OR: Rx<ProductModel> prodcutModel = ProductModel(name: "پفک نمکی", price: "200,000", off: "10%").obs;
  // AND: now we can remove constructor
  ProductController({required this.prodcutModel});
}
