import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product_service.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_textfield.dart';
import 'package:store_app/widgets/snake_bar.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? desc;

  dynamic price;

  String? image;

  String? title;
  bool isLooding = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)?.settings.arguments as ProductModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Update Product',
        ),
        centerTitle: true,
      ),
      body: ModalProgressHUD(
        inAsyncCall: isLooding,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 102,
                    backgroundColor: const Color.fromARGB(255, 215, 176, 255),
                    child: CircleAvatar(
                      radius: 100,
                      child: Image.network(
                        product.image,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  CustomTextFieldtow(
                    hintText: 'Enter Product Name',
                    onChanged: (data) {
                      title = data;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFieldtow(
                    hintText: 'Enter the description',
                    onChanged: (data) {
                      desc = data;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFieldtow(
                    hintText: 'Enter product price',
                    onChanged: (data) {
                      price = data;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFieldtow(
                    hintText: 'Enter product image',
                    onChanged: (data) {
                      image = data;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomBotton(
                    text: 'Update',
                    ontap: () async {
                      setState(() {
                        isLooding = true;
                      });
                      await updateProduct(product);
                      try {
                        // ignore: use_build_context_synchronously
                        showSnackBar(context,
                            color: const Color.fromARGB(255, 215, 176, 255),
                            message: 'Your product updated successflly');

                        setState(() {
                          isLooding = false;
                        });
                      } catch (e) {
                        setState(() {
                          isLooding = false;
                        });
                        showSnackBar(
                          context,
                          color: Colors.red,
                          message: 'there is an Error ${e.toString()}',
                        );
                        setState(() {
                          isLooding = false;
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updateProduct(
      title: title == null ? product.title : title!,
      price: price == null ? product.price.toString() : price!.toString(),
      description: desc == null ? product.description : desc!,
      image: image == null ? product.image : image!,
      category: product.category,
      id: product.id,
    );
  }
}
