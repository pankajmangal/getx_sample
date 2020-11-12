import 'package:flutter_getx/modal/product_data.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = List<ProductData>().obs;
  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, data) => sum + data.price);

 void addItemsToCart(ProductData productData){
   cartItems.add(productData);
 }

}