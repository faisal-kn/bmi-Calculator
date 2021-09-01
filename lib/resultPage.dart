import 'package:flutter/material.dart';
import 'inputPage.dart';

const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const bottomContainerHeight = 50.0;

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget>[
          Center(
              child: Text(
                'Your Result',
                textAlign: TextAlign.center,
                style:TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
              color: activeCardColor,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 50.0, 0, 60.0),
                    child: Text(
                      bmi.WeightClass,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade400,
                      ),
                    ),
                  ),
                  Text(
                    bmi.bmi.toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height:30.0,
                    width: double.infinity,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        bmi.desc,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap:(){
              Navigator.pushReplacementNamed(context, '/');
            },
            child: Container(
              child: Center(
                child: Text(
                  'CALCULATE AGAIN',
                  style: TextStyle(
                      fontSize: 20.0
                  ),
                ),
              ),
              height: bottomContainerHeight,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
                color: bottomContainerColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
