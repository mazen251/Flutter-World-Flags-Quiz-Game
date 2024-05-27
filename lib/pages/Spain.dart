import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/texts.dart';

class Spain extends StatelessWidget
{

  Spain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: txt(name: 'Spain',),
      ),
      body: Column(
        children: [

          Image.asset('assets/images/es.png'),
          txt(name: 'Population: 46.7 million',cl: Colors.blue),
          txt(name: 'This European country is the birthplace of Miguel de Cervantes, whose iconic “Don Quixote” is considered the first modern novel. The first part was published in 1605 and the second 10 years later.',cl: Colors.blueGrey),
        ],

      ),
    );
  }


}