import 'package:flutter/material.dart';
import 'package:oriina/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Woman",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
      ],
    );
  }
}

// we need statfull widegts to categories

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand Bag", "Jewllery", "Footwear", "Dreeses"];

  //by default first item has selected first
  int SelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategories(index)),
    );
  }

  Widget buildCategories(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        children: <Widget>[
          Text(
            categories[index],
            style: TextStyle(fontWeight: FontWeight.bold,color: kTextColor),

          ),
          Container(
            margin: EdgeInsets.only(top: kDefaultPaddin/4),
            height: 2,
            width: 30,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
