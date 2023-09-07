// ignore_for_file: missing_required_param, must_be_immutable, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:store_application/components/custume_text_filed.dart';
import 'package:store_application/models/product_model.dart';
import '../components/custom_button.dart';
import '../services/update_product.dart';

class UpdateProductPage extends StatefulWidget {
  const UpdateProductPage({super.key});
  static String id = 'update Product';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, desc, image;
  String? price;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Update Product',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              CustomTextFiled(
                onChanged: (data) {
                  productName = data;
                  controller.clear();
                },
                hintText: 'Product Name',
                obscureText: false,
              ),
              const SizedBox(height: 15),
              CustomTextFiled(
                onChanged: (data) {
                  desc = data;
                  controller.clear();
                },
                hintText: 'description',
                obscureText: false,
              ),
              const SizedBox(height: 15),
              CustomTextFiled(
                inputType: TextInputType.number,
                onChanged: (data) {
                  price = data;
                  controller.clear();
                },
                hintText: 'price',
                obscureText: false,
              ),
              const SizedBox(height: 15),
              CustomTextFiled(
                onChanged: (data) {
                  image = data;
                  controller.clear();
                },
                hintText: 'image',
                obscureText: false,
              ),
              const SizedBox(height: 50),
              CustomButton(
                onTap: () async {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  );
                  setState(() {});

                  try {
                    await updateProduct(product);
                  } catch (e) {
                    print(e.toString());
                  }
                  Navigator.of(context).pop();
                  setState(() {});
                },
                text: 'Update',
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updateProduct(
        id: product.id,
        title: productName == null ? product.title : productName!,
        price: price == null ? product.price.toString() : price!,
        desc: desc == null ? product.description : desc!,
        image: image == null ? product.image : image!,
        category: product.category);
  }
}
