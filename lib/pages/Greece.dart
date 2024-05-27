import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/texts.dart';

class Greece extends StatelessWidget
{

  Greece();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: txt(name: 'Greece',),
      ),
      body: Column(
        children: [

          Image.asset('assets/images/gr.png'),
          txt(name: 'Population: 10.5 million',cl: Colors.blue),
          txt(name: 'In order to avoid excessive wear and tear to its historic monuments, this ancient European country banned high heels at archaeological sites.',cl: Colors.blueGrey),
        ],

      ),
    );
  }


}