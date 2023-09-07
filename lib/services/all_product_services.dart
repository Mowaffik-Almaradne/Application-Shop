// ignore_for_file: missing_required_param

import 'package:store_application/helper/api.dart';

import '../models/product_model.dart';

class AllProductService {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products',
    );

    List<ProductModel> productList = [];
    for (var prodactData in data) {
      productList.add(
        ProductModel.fromJson(prodactData),
      );
    }
    return productList;
  }
}
