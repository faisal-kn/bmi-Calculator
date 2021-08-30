import 'package:flutter/material.dart';
import 'ReuseableCard.dart';
import 'GenderWidget.dart';

const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const bottomContainerHeight = 40.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(Color(0xFF1D1E33), GenderWidget(Icons.male,'Male')),
                ),
                Expanded(
                  child: ReuseableCard(
                    Color(0xFF1D1E33),
                    GenderWidget(Icons.female,'Female')
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(Color(0xFF1D1E33), Container()),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(Color(0xFF1D1E33), Container()),
                ),
                Expanded(
                  child: ReuseableCard(Color(0xFF1D1E33), Container()),
                ),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0)),
              color: bottomContainerColor,
            ),
          ),
        ],
      ),
    );
  }
}




