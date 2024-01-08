import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helpers/api_class.dart';
import 'package:store_app/models/product_model.dart';

class GetAllProductsService {
  final String apiUri = 'https://fakestoreapi.com/products';
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data = await Api().get(uri: apiUri);

    List<ProductModel> productList = [];
    for (var element in data) {
      productList.add(ProductModel.fromJson(element));
    }
    return productList;
  }
}
