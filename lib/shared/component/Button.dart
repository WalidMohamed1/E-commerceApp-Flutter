import 'package:flutter/material.dart';

Widget buildButton(double width,String txt,double txtSize,Color background,Color txtColor,)
{
  return Container(
    width: width,
    child: OutlinedButton(
        onPressed: () {},
        child: Text(txt, style: TextStyle(fontSize: txtSize)),
        style: OutlinedButton.styleFrom(
          backgroundColor: background,
          primary: txtColor,
        )
    ),
  );
}
