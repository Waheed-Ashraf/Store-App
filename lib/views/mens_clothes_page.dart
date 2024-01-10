import 'package:flutter/material.dart';
import 'package:store_app/widgets/category_pages.dart';

class MensClothesPage extends StatelessWidget {
  const MensClothesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Men's Clothing"),
        centerTitle: true,
      ),
      body: CategoryPages(categoryName: "men's clothing"),
    );
  }
}
