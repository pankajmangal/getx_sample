import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/cart_controller.dart';
import 'package:flutter_getx/controller/shopping_controller.dart';
import 'package:get/get.dart';

class ShoppingCart extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.productList.length,
                    itemBuilder: (context, index){
                      return Card(
                        color: Colors.amber,
                        margin: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:EdgeInsets.all(6),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(controller.productList[index].productName),
                                  Text("\$ ${controller.productList[index].price}")
                                ],
                              ),
                            ),
                            SizedBox(height: 12,),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Text(controller.productList[index].productDesc),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: FlatButton(
                                  onPressed: () => cartController.addItemsToCart(controller.productList[index]),
                                  color: Colors.teal,
                                  child: Text("Add To Cart",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                }
              ),
            ),
            GetX<CartController>(
              builder: (controller) {
                return Text("Total amount : \$ ${controller.totalPrice}",
                style: TextStyle(
                  fontSize: 20
                ),);
              }
            ),
            SizedBox(height: 66,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        backgroundColor: Colors.black,
        label: GetX<CartController>(
          builder: (controller) {
            return Text('${controller.count}',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white
            ),);
          }
        ),
        icon: Icon(Icons.add_shopping_cart_rounded),
      ),
    );
  }
}
