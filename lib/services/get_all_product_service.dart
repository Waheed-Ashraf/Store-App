import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';

class GetAllProductsService {
  final String apiUri = 'https://fakestoreapi.com/products';
  Future<List<ProductModel>> getAllProducts() async {
    final http.Response Response = await http.get(Uri.parse(apiUri));
    if (Response.statusCode == 200) {
      List<dynamic> data = jsonDecode(Response.body);

      List<ProductModel> productList = [];
      for (var element in data) {
        productList.add(ProductModel.fromJson(element));
      }
      return productList;
    } else {
      throw Exception('There is an Error ${Response.statusCode}');
    }
  }
}
