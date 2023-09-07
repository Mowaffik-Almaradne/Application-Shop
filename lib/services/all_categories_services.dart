// ignore_for_file: missing_required_param

import 'package:store_application/helper/api.dart';

class AllCategoriesServices {

  Future<List<dynamic>> getCategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
