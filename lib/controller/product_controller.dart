import 'package:flutter_getx_smpl/model/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  // OR:
  Rx<ProductModel> prodcutModel =
      ProductModel(name: "نوشابه", price: "200,000", off: "10%").obs;
  // AND: now we can remove constructor

  /*
    Rx<ProductModel> prodcutModel;
    ProductController({required this.prodcutModel});
  */
}
