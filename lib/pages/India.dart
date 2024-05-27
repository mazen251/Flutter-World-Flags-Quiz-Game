import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/texts.dart';

class India extends StatelessWidget
{

  India();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: txt(name: 'India',),
      ),
      body: Column(
        children: [

          Image.asset('assets/images/in.png'),
          txt(name: 'Population: 1.37 billion',cl: Colors.blue),
          txt(name: 'India gave the world its sweet tooth. Although sugarcane originated in Southeast Asia, it was first chemically refined about 2,500 years ago in India. Thanks, India.',cl: Colors.blueGrey),
        ],

      ),
    );
  }


}