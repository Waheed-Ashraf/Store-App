import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helpers/api_class.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProduct {
  String apiUri = "https://fakestoreapi.com/products";
  Future<ProductModel> updateProduct({
    required String title,
    required double price,
    required String description,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().Put(uri: apiUri, body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    });
    return ProductModel.fromJson(data);
  }
}
