import 'package:flutter/material.dart';
import 'package:movies/utilss/color.dart';

Widget buildTag(
String title
){
  return Container(
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
    decoration: BoxDecoration(
      color: kSearchbarColor,
      borderRadius: BorderRadius.circular(18),
    ),
    child: Text(
      title,
      style:  TextStyle(
        color: Colors.white24,
        fontSize: 16
      ),
    ),
  );
}