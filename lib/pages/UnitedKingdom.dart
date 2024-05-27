import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/texts.dart';

class UK extends StatelessWidget
{

  UK();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: txt(name: 'United Kingdom',),
      ),
      body: Column(
        children: [

          Image.asset('assets/images/gb.png'),
          txt(name: 'Population: 67.5 million',cl: Colors.blue),
          txt(name: 'Tea is big on this European island nation — locals reportedly drink 165 million cups a day. But it was a Portugeuse woman who first brought the drink to the isles. ',cl: Colors.blueGrey),
        ],

      ),
    );
  }


}