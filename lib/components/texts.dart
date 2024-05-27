import'package:flutter/material.dart';
Widget txt({required String name,Color cl=Colors.white})
{
  return Text(name,style: TextStyle(
    color: cl,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),);
}