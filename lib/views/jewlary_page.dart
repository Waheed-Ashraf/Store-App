import 'package:flutter/material.dart';
import 'package:store_app/widgets/category_pages.dart';

class JewlaryPage extends StatelessWidget {
  const JewlaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jewelery'),
        centerTitle: true,
      ),
      body: CategoryPages(categoryName: 'jewelery'),
    );
  }
}
