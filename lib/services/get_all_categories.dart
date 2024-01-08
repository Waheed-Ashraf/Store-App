import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helpers/api_class.dart';

class GetAllCategoriesService {
  final String apiUri = 'https://fakestoreapi.com/products';

  Future<List<String>> getAllCategories() async {
    List<String> categories = await Api().get(uri: apiUri);
    return categories;
  }
}
