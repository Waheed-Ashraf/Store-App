import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';

class CustomProductCard extends StatelessWidget {
  CustomProductCard({super.key, required this.product});
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'UpdateProductPage');
            },
            child: SizedBox(
              child: Card(
                shadowColor: Colors.grey,
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Colors.white,
                          Color.fromARGB(255, 215, 176, 255),
                        ], // Set gradient colors
                        stops: [.4, 1],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                product.title,
                                overflow: TextOverflow.fade,
                                maxLines: 1,
                              ),
                            ),
                            Row(
                              children: [
                                Text(r'$' + product.price.toString()),
                                const Spacer(),
                                const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 53,
            top: -48,
            child: Image.network(
              product.image,
              width: 90,
              height: 90,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
