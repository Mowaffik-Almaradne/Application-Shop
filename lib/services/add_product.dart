// ignore_for_file: missing_required_param

import 'package:store_application/helper/api.dart';
import '../models/product_model.dart';

class AddProduct {
  Future<ProductModel> addProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category,
      },
    );
    return ProductModel.fromJson(data);
  }
}

// this is methode add product in my Api   <post>

//  that is methode get product from my api   <get>