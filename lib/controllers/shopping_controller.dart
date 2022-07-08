import 'package:get/get.dart';

import 'package:less_is_flutter/models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;
  int get count => products.length;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    await Future.delayed(
      Duration(microseconds: 2000),
    );
    var productData = [
      Product(
          id: 1,
          price: 30,
          productDescription: 'some description about product',
          productName: 'Mouse'),
      Product(
          id: 2,
          price: 40,
          productDescription: 'some description about product',
          productName: 'Keyboard'),
      Product(
        id: 3,
        price: 620,
        productDescription: 'some description about product',
        productName: 'Monitor',
      ),
      Product(
          id: 4,
          price: 80,
          productDescription: 'some description about product',
          productName: 'Ram'),
      Product(
        id: 5,
        price: 120.5,
        productDescription: 'some description about product',
        productName: 'Speaker',
      ),
    ];

    products.assignAll(productData);
  }
}
