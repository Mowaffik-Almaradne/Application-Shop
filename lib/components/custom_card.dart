// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:store_application/models/product_model.dart';
import 'package:store_application/pages/update_product.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    super.key,
    required this.product,
  });

  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        Navigator.pushNamed(context, UpdateProductPage.id, arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.grey.withOpacity(.1),
                  spreadRadius: 2.5,
                  offset: const Offset(4, 4),
                ),
              ],
            ),
            child: Card(
              elevation: 8,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0, 6),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '' '${product.price.toString()}',
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 25,
            top: -65,
            child: Image.network(
              product.image,
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
