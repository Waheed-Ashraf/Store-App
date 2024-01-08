import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helpers/api_class.dart';
import 'package:store_app/models/product_model.dart';

class GetProductsByCategoryService {
  final String baseApiUri = 'https://fakestoreapi.com/products/category/';
  Future<List<ProductModel>> getAllProducts({required categoryName}) async {
    List<dynamic> data = await Api().get(uri: baseApiUri + categoryName);

    List<ProductModel> productList = [];
    for (var element in data) {
      productList.add(ProductModel.fromJson(element));
    }
    return productList;
  }
}
