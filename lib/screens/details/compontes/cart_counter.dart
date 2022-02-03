import 'package:flutter/material.dart';
import 'package:oriina/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfIteams = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutLineButton(iconData: (Icons.remove),
            press: () {
          if(numOfIteams>1){
               setState(() {numOfIteams--;});}
            }),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(


            // if our item is less  then 10 then  it shows 01 02 like that
            numOfIteams.toString().padLeft(2, "0"),

            style: Theme
                .of(context)
                .textTheme
                .headline6,
          ),
        ),
        buildOutLineButton(iconData: Icons.add,
            press: (){
          setState(() {
            numOfIteams++;
          });
            }),
      ],
    );
  }

  SizedBox buildOutLineButton(
      {required IconData iconData, VoidCallback?  press}) {
    return SizedBox(
      width: 40,
      height: 32,


      child: OutlinedButton(

        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          // side: BorderSide(width: 2, color: Colors.green),
        ),

        onPressed: press, child: Icon(iconData),),
    );
  }
}
