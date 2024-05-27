import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/texts.dart';

class China extends StatelessWidget
{

  China();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: txt(name: 'China',),
      ),
      body: Column(
        children: [

          Image.asset('assets/images/cn.png'),
          txt(name: '1.43 billion',cl: Colors.blue),
          txt(name: 'There are 63 million pairs of chopsticks — or 126 million single sticks — manufactured in China every year. These range from mass-produced disposable chopsticks to high-quality sticks that can take up to (yes) a month to painstakingly make.',cl: Colors.blueGrey),
        ],

      ),
    );
  }


}