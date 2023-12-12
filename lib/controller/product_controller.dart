import 'package:get/get.dart';
import 'package:state_management/model/shoe_model.dart';

class ProductController extends GetxController {
  RxList<ShoeData> listCart = <ShoeData>[].obs;
  
  void addCart(ShoeData data) async {
    listCart.add(data);
    update();
    Get.snackbar('Succcess', 'Item add to cart');
  }

  void removeCart(ShoeData data) {
    listCart.remove(data);
    update();
    Get.snackbar('Succcess', 'Item remove from cart');
  }
}
