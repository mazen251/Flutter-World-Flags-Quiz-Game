import'package:flutter/material.dart';
import'texts.dart';

Widget btn({String name='',Color clr=Colors.blueGrey,required Function()event})
{
  return MaterialButton(onPressed: event,child:txt(name: name),color: clr,);
}