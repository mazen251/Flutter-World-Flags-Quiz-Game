import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/texts.dart';

class ChatDetails extends StatelessWidget
{
  late Map Chat;
  ChatDetails(this.Chat);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: txt(name: Chat['name'],),


      ),
      body: Column(
        children: [

          Image.asset(Chat['url']),
          txt(name: Chat['message'],cl: Colors.blueGrey),
        ],

      ),
    );
  }


}