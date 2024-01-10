import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_products_by_category.dart';
import 'package:store_app/widgets/custom_product_card.dart';

class CategoryPages extends StatelessWidget {
  CategoryPages({super.key, required this.categoryName});
  String categoryName;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>>(
      future: GetProductsByCategoryService()
          .getAllProducts(categoryName: categoryName),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<ProductModel> product = snapshot.data!;
          return GridView.builder(
            itemCount: product.length,
            physics: const BouncingScrollPhysics(),
            clipBehavior: Clip.none,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 15,
              childAspectRatio: 1.2,
            ),
            itemBuilder: (context, index) {
              return CustomProductCard(
                product: product[index],
              );
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.red,
            ),
          );
        }
      },
    );
  }
}
