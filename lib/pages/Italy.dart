import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/texts.dart';

class Italy extends StatelessWidget
{

  Italy();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: txt(name: 'Italy',),
      ),
      body: Column(
        children: [

          Image.asset('assets/images/it.png'),
          txt(name: 'Population: 60.6 million',cl: Colors.blue),
          txt(name: 'One of the most iconic foods in this European nation is the tomato. But Italians have only been eating this fruit since the 1500s, when Spanish conquistadors brought it from Peru to Naples, which at the time was under Spanish rule.',cl: Colors.blueGrey),
        ],

      ),
    );
  }


}