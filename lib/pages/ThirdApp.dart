import 'package:flutter/material.dart';
import 'package:flutter_app/components/texts.dart';
import 'package:flutter_app/components/buttons.dart';
import 'package:flutter_app/pages/China.dart';
import 'package:flutter_app/pages/Egypt.dart';
import 'package:flutter_app/pages/France.dart';
import 'package:flutter_app/pages/Greece.dart';
import 'package:flutter_app/pages/Help.dart';
import 'package:flutter_app/pages/India.dart';
import 'package:flutter_app/pages/Italy.dart';
import 'package:flutter_app/pages/QuizLogo.dart';
import 'package:flutter_app/pages/Settings.dart';
import 'package:flutter_app/pages/Spain.dart';
import 'package:flutter_app/pages/UnitedKingdom.dart';
import 'package:flutter_app/pages/chatdetails.dart';
import 'package:flutter_app/pages/login.dart';
import 'package:flutter_app/pages/About.dart';

class ThirdApp extends StatelessWidget {

  final String email;
  ThirdApp({required this.email});



  List<Map> stories=[
    {
      'name':'Mostafa Ameen',
      'url' :'assets/images/download (1).jpeg',
    },
    {
      'name':'Mazen Walid',
      'url' :'assets/images/download (2).jpeg',
    }, {
      'name':'Saif Eldin Nasser',
      'url' :'assets/images/download (3).jpeg',
    },

  ];
  List<Map> chats=[
    {
      'name':'mostafa ameen',
      'url':'assets/images/download (1).jpeg',
      'message':'wp',
      'time':'20:20'
    },
    {
      'name':'saif nasser',
      'url':'assets/images/download (2).jpeg',
      'message':'how are you?',
      'time':'6:20'
    },
    {
      'name':'mezo walid',
      'url':'assets/images/download (3).jpeg',
      'message':'wanna hangout?',
      'time':'8:17'
    },
    {
      'name':'mariam mahmoud',
      'url':'assets/images/download.jpeg',
      'message':'hey',
      'time':'8:50'
    },
    {
      'name':'hossam mohamed',
      'url':'assets/images/images.jpeg',
      'message':'where are u?',
      'time':'7:17'
    },
    {
      'name':'seif abdelrahman',
      'url':'assets/images/man.jpeg',
      'message':'good morning dude',
      'time':'4:11'
    }

  ];
  Widget _buildCountryTile(String countryName, String flagImagePath) {
    return ListTile(
      leading: Image.asset(
        flagImagePath,
        width: 50,
        height: 50,
      ),
      title: Text(
        countryName,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  accountName: txt(name: ''),
                  accountEmail: txt(name: email),
                currentAccountPicture: CircleAvatar(
                  radius: 50,
                  backgroundImage:
                  AssetImage('assets/images/download (1).jpeg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),

              ),
              ListTile(
                title: Text('Settings'),
                trailing: Icon(Icons.settings),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                },
              ),
              ListTile(
                title: Text('Help'),
                trailing: Icon(Icons.help),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (c) {
                      return Help();
                    }),
                  );
                },
              ),
              ListTile(
                title: Text('Logout'),
                trailing: Icon(Icons.exit_to_app),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (c) {
                      return Login();
                    }),
                  );
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: txt(name: 'FlagQuiz'),
          backgroundColor: Colors.purple.shade300,
          bottom: TabBar(
            indicatorColor: Colors.blue,
            tabs: [
              Tab(
                icon: Icon(Icons.flag),
                text: 'Flags',
              ),
              Tab(
                icon: Icon(Icons.perm_device_information),
                text: 'Fun Facts',
              ),
              Tab(
                icon: Icon(Icons.help),
                text: 'About',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Flags Tab
            Container(
              color: Color.fromARGB(255,93,41,141),
              child: Card(
                  child: QuizScreen()

              ),
            ),

            // Fun Facts Tab
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg2.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: ListView(
                  children: [
                    Card(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Egypt()),
                          );
                        },
                        child: _buildCountryTile('Egypt', 'assets/images/eg.png'),
                      ),
                      color: Color.fromARGB(255, 130, 61, 121),
                    ),
                    Card(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Greece()),
                            );
                          },
                          child: _buildCountryTile('Greece', 'assets/images/gr.png')
                      ),
                      color: Color.fromARGB(255, 130, 61, 121),
                    ),
                    Card(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Italy()),
                            );
                          },
                          child: _buildCountryTile('Italy', 'assets/images/it.png')),
                      color: Color.fromARGB(255, 130, 61, 121),
                    ),
                    Card(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => China()),
                            );
                          },
                          child: _buildCountryTile('China', 'assets/images/cn.png')),
                      color: Color.fromARGB(255, 130, 61, 121),
                    ),
                    Card(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => France()),
                            );
                          },
                          child: _buildCountryTile('France', 'assets/images/fr.png')),
                      color: Color.fromARGB(255, 130, 61, 121),
                    ),
                    Card(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Spain()),
                            );
                          },
                          child: _buildCountryTile('Spain', 'assets/images/es.png')),
                      color: Color.fromARGB(255, 130, 61, 121),
                    ),
                    Card(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => India()), // Navigate to the Egypt page
                            );
                          },
                          child: _buildCountryTile('India', 'assets/images/in.png')),
                      color: Color.fromARGB(255, 130, 61, 121),
                    ),
                    Card(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => UK()), // Navigate to the Egypt page
                            );
                          },
                          child: _buildCountryTile('United Kingdom', 'assets/images/gb.png')),
                      color: Color.fromARGB(255, 130, 61, 121),
                    ),
                  ],
                ),
              ),
            ),
            //About tab
            StoriesScreen(),
          ],
        ),
      ),
    );
  }
}
