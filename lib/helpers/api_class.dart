import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  //Get Methode ====>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  Future<dynamic> get({required String uri}) async {
    http.Response response = await http.get(Uri.parse(uri));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('There is an Error ${response.statusCode}');
    }
  }

//Post Methode =>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  Future<Map<String, dynamic>> Post({
    required String uri,
    required Map<String, dynamic> body,
    String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({"Authorization": "Bearer $token"});
    }
    http.Response response = await http.post(Uri.parse(uri), body: body);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
        'Failed to create product. Status code: ${response.statusCode} , with body ${jsonDecode(response.body)}',
      );
    }
  }

  //put Methode ==========================>>>>>>>>>>>>>>

  Future<Map<String, dynamic>> Put({
    required String uri,
    required Map<String, dynamic> body,
    String? token,
  }) async {
    print('$uri' 'the body : $body');
    Map<String, String> headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
    };
    if (token != null) {
      headers.addAll({"Authorization": "Bearer $token"});
    }
    http.Response response = await http.put(Uri.parse(uri), body: body);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      print(data);
      return data;
    } else {
      throw Exception(
        'Failed to create product. Status code: ${response.statusCode} , with body ${jsonDecode(response.body)}',
      );
    }
  }
}
