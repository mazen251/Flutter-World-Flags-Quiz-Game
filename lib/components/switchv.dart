import'package:flutter/material.dart';
class SwitchVScreen extends StatefulWidget {
  @override
  SwitchClass createState() => new SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = false;
  var textValue = 'Viberation is OFF';

  void toggleSwitch(bool value) {

    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
        textValue = 'Viberation is ON';
      });
      print('Viberation is ON');
    }
    else
    {
      setState(() {
        isSwitched = false;
        textValue = 'Viberation is OFF';
      });
      print('Viberation is OFF');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ Transform.scale(
            scale: 2,
            child: Switch(
              onChanged: toggleSwitch,
              value: isSwitched,
              activeColor: Colors.blue,
              activeTrackColor: Colors.yellow,
              inactiveThumbColor: Colors.redAccent,
              inactiveTrackColor: Colors.orange,
            )
        ),
          Text('$textValue', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
        ]);
  }
}