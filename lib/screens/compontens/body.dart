import 'package:flutter/material.dart';
import 'package:oriina/constants.dart';
import 'package:oriina/models/product.dart';
import 'package:oriina/screens/compontens/Categories.dart';
import 'package:oriina/screens/compontens/Item_Card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Woman",
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: kDefaultPaddin,
               crossAxisSpacing: kDefaultPaddin
            ),
            itemBuilder: (context, index) => ItemCard(product: products[index],),
          ),
        ))
      ],
    );
  }
}



// we need statfull widegts to categories
