import 'package:flutter_getx/modal/product_data.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController{
  var productList = List<ProductData>().obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async{
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      ProductData(
        id: 1,
        productName: "Pent",
        productImage: "pent.png",
        productDesc: "jljdklfjlfjl fdllfj",
        price: 12.30
      ),
      ProductData(
          id: 2,
          productName: "Shirt",
          productImage: "shirt.png",
          productDesc: "sdjflkdfjlkfjldf lfdl fslfjld ",
          price: 16.45
      ),
      ProductData(
          id: 3,
          productName: "Shoes",
          productImage: "rebook.png",
          productDesc: "dklfjklfjfjl jldfjdfjkdfj",
          price: 20.4
      ),
      ProductData(
          id: 4,
          productName: "Glubs",
          productImage: "glub.png",
          productDesc: "dklfjdlkfjdklf dfdfl df",
          price: 8.50
      )
    ];

    productList.value = (productResult);
  }
}