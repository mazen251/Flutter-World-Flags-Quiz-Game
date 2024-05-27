import 'package:flutter/material.dart';
import 'package:flutter_app/components/texts.dart';
import 'package:flutter_app/components/buttons.dart';

class StoriesScreen extends StatelessWidget {
  List<Map<String, dynamic>> stories = [
    {
      'name': 'Mazen Walid',
      'url': 'assets/images/mazen.png',
    },
    {
      'name': 'Mostafa Ameen',
      'url': 'assets/images/mstf.jpg',
    },
    {
      'name': 'Saif Eldin Nasser',
      'url': 'assets/images/saif.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg2.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 15),
            for (int i = 0; i < stories.length; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(stories[i]['url']),
                  ),
                  title: Text(
                    stories[i]['name'],
                    style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stories'),
        ),
        body: StoriesScreen(),
      ),
    ),
  );
}
