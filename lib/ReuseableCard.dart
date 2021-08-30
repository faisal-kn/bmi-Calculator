import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  Color colour = Color(0xFF1D1E33);
  Widget cardChild = Container();

  ReuseableCard(Color colour, Widget cardChild) {
    this.colour = colour;
    this.cardChild = cardChild;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}