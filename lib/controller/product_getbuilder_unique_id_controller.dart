import 'package:flutter_getx_smpl/model/product_model.dart';
import 'package:get/get.dart';

class ProductGetBuilderUniqueIdController extends GetxController {
  ProductModel productModel =
      ProductModel(name: "نوشابه", price: "210,000", off: "10%");

  setNewProduct(int id) {
    productModel.name = "محصول جدید";
    update([id]);
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
