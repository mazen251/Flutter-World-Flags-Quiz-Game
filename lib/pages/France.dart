import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/texts.dart';

class France extends StatelessWidget
{

  France();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: txt(name: 'France1',),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg2.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [

            Image.asset('assets/images/fr.png'),
            txt(name: 'Population: 65.1 million',cl: Colors.blue),
            txt(name: 'This European nation is the most visited country in the world with 89 million annual tourists.',cl: Colors.black),
          ],

        ),
      ),
    );
  }


}