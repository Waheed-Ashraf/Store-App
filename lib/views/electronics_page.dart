import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_products_by_category.dart';
import 'package:store_app/widgets/category_pages.dart';

class ElectronicsPage extends StatelessWidget {
  ElectronicsPage({super.key});
  String? categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Electronics'),
        centerTitle: true,
      ),
      body: CategoryPages(categoryName: 'electronics'),
    );
  }
}
