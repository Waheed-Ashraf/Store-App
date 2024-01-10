import 'package:flutter/material.dart';
import 'package:store_app/widgets/category_pages.dart';

class WomenClothesPage extends StatelessWidget {
  const WomenClothesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Women's Clothing"),
        centerTitle: true,
      ),
      body: CategoryPages(categoryName: "women's clothing"),
    );
  }
}
