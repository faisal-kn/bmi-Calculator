import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {

  String txt='';
  IconData ico=Icons.male;
  GenderWidget(IconData ico,String txt){
    this.ico=ico;
    this.txt=txt;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ico,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(txt,
            style: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF8D8E98),
            )),
      ],
    );
  }
}