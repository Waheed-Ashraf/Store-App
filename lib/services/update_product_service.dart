import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helpers/api_class.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProductService {
  String apiUri = "https://fakestoreapi.com/products/";
  Future<ProductModel> updateProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
    required dynamic id,
  }) async {
    Map<String, dynamic> data = await Api().Put(uri: "$apiUri" "$id", body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    });
    print(id);
    return ProductModel.fromJson(data);
  }
}
