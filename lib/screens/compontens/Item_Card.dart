import 'package:flutter/material.dart';
import 'package:oriina/constants.dart';
import 'package:oriina/models/product.dart';
class ItemCard extends StatelessWidget {
  final  Product product;
 // final void Function()? onPressed; // Good
  // final VoidCallback? onPressed; // Good

  final  VoidCallback  press;

  const ItemCard({
    Key? key,
    required this.product,
      required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPaddin),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(tag: "${product.id}",
              child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              products[0].title,
              style: TextStyle(color: kTextColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}