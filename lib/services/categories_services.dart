
// ignore_for_file: missing_required_param

import 'package:store_application/helper/api.dart';
import '../models/product_model.dart';

class CategoriesServices {
  Future<List<ProductModel>> getCategoriesProduects(
      {required String categoryName}) async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products/category/$categoryName',
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
