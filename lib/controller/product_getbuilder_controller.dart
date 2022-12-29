import 'package:flutter_getx_smpl/model/product_model.dart';
import 'package:get/get.dart';

class ProductGetBuilderController extends GetxController {
  ProductModel productModel =
      ProductModel(name: "نوشابه", price: "210,000", off: "10%");

  setNewProduct() {
    productModel = ProductModel(name: "نوشمک", price: "150,000", off: "5%");
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("OnInit");
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print("onReady");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("onClose");
  }
}
