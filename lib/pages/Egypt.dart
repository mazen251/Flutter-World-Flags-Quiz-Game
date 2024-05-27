import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/texts.dart';

class Egypt extends StatelessWidget
{

  Egypt();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: txt(name: 'Egypt',),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/eg.png'),
          txt(name: 'Population: 100.4 million',cl: Colors.blue),
          txt(name: 'Bread was invented in Egypt around 8,000 BC. The first examples of it were flat and unleavened, most closely resembling what we know today as chapatis in India or tortillas in Latin America.',cl: Colors.blueGrey),
        ],

      ),
    );
  }


}