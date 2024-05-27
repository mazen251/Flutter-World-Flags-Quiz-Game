import'package:flutter/material.dart';
import 'package:flutter_app/components/texts.dart';
import 'package:flutter_app/components/buttons.dart';
import 'package:flutter_app/pages/chatdetails.dart';

class SecondApp extends StatelessWidget
{
  final String email;
  final String password;

  SecondApp({required this.email, required this.password});

  List<Map> stories=[
    {
      'name':'Mostafa',
      'url' :'assets/images/download (1).jpeg',
    },
    {
      'name':'Mazen',
      'url' :'assets/images/download (2).jpeg',
    }, {
      'name':'Yehia',
      'url' :'assets/images/download (3).jpeg',
    },
    {
      'name':'mariam',
      'url' :'assets/images/download.jpeg',
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("$email"),
          centerTitle: true,
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.only(right: 16.0),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       crossAxisAlignment: CrossAxisAlignment.end,
          //       children: [
          //         Text("Email: $email"),
          //         Text("Password: $password"),
          //       ],
          //     ),
          //   ),
          // ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int i=0;i<stories.length;i++)
                      Padding(padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(stories[i]['url']),
                            ),
                            txt(name: stories[i]['name'],cl: Colors.black,),
                          ],
                        ),
                      ),
                    SizedBox(width: 15,),

                  ],
                ),
              ),
              SizedBox(width: 15,),
              Divider(
                color: Colors.blue.shade100,
                thickness: 3,
                indent: 20,
                endIndent: 20,
              ),
              SingleChildScrollView(
                child: Card(
                  child: Column(
                    children: [
                      for (int i = 0; i < chats.length; i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (c) {
                                    return ChatDetails(chats[i]);
                                  },
                                ),
                              );
                            },
                            leading: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(chats[i]['url']),
                            ),
                            title: txt(name: chats[i]['name'], cl: Colors.black),
                            subtitle: txt(name: chats[i]['message'], cl: Colors.blueGrey),
                            trailing: Text(
                              chats[i]['time'],
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),

              // SingleChildScrollView(
              //   child: Column(
              //
              //     children: [
              //       for(int i=0;i<chats.length;i++)
              //         Padding(padding: const EdgeInsets.all(8.0),
              //           child: InkWell(
              //             onTap:(){
              //               Navigator.of(context).push(
              //
              //                 MaterialPageRoute(builder: (c){
              //                   return ChatDetails(chats[i]);
              //                 },
              //                 ),
              //               );
              //             },
              //             child: Row(
              //               children: [
              //                 CircleAvatar(
              //                   radius: 40,
              //                   backgroundImage: AssetImage(chats[i]['url']),
              //                 ),
              //                 Padding(padding: const EdgeInsets.all(8.0),
              //                   child: Column(
              //                     crossAxisAlignment: CrossAxisAlignment.start,
              //                     children: [
              //                       txt(name: chats[i]['name'],cl: Colors.black),
              //                       txt(name: chats[i]['message'],cl: Colors.blueGrey),
              //                     ],
              //                   ),
              //                 ),
              //                 Expanded(
              //                   child: Text(
              //                     chats[i]['time'],
              //                     textAlign: TextAlign.end,
              //                     style: TextStyle(
              //                       color: Colors.blueGrey,
              //                       fontSize: 20,
              //                     ),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //
              //
              //         ),
              //       SizedBox(height: 15,),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),

      ),
    );
  }

}