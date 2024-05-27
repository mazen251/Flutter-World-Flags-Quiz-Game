import 'package:flutter/material.dart';
import 'package:flutter_app/components/buttons.dart';
import 'package:flutter_app/components/texts.dart';
import 'package:flutter_app/pages/SecondApp.dart';
import 'package:flutter_app/pages/ThirdApp.dart';

class Login extends StatelessWidget {
  String email = "";
  String password = "";
  List<Map<String, String>> users = [
    {
      'name': 'mostafa@gmail.com',
      'password': '123',
    },
    {
      'name': 'hossam@gmail.com',
      'password': '123',
    },
    {
      'name': 'khaled@gmail.com',
      'password': '123',
    },
  ];
  // Show Error
  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text('Incorrect email or password. Please try again.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.purple,
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/logo.png'), //
          ),
          SizedBox(width: 16), //
        ],
        title: Text("FlagQuiz"),
        centerTitle: true,

      ),
      body: Container(
        color: Colors.grey,
        width: double.infinity,
        child: Column(
          children: [
            txt(name: 'Login', cl: Colors.black),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                onChanged: (value) {
                  email = value;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  labelText: 'Email',
                  hintText: 'Enter Email Address',
                  suffixIcon: Icon(Icons.email),
                ),
              ),
            ),
            txt(name: 'Password', cl: Colors.black),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                onChanged: (value) {
                  password = value;
                },
                obscureText: true, // Hide password text
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                  suffixIcon: Icon(Icons.password),
                ),
              ),
            ),
            btn(
              name: 'Login',
              event: () {
                bool credentialsValid = false;
                for (var user in users) {
                  if (user['name'] == email && user['password'] == password) {
                    credentialsValid = true;
                    break;
                  }
                }

                if (credentialsValid) {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (c) {
                      return ThirdApp(email: email);
                    }),
                  );
                } else {
                  _showErrorDialog(context);
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('No account?'),
                TextButton(
                  onPressed: () {},
                  child: Text('Click here'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_app/components/buttons.dart';
// import 'package:flutter_app/components/texts.dart';
// import 'package:flutter_app/pages/SecondApp.dart';
// import 'package:flutter_app/pages/ThirdApp.dart';
//
// class User {
//   final String email;
//   final String password;
//
//   User({required this.email, required this.password});
// }
//
// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//   List<User> registeredUsers = [
//
//   ];
//   String email = "";
//   String password = "";
//   bool showError = false;
//
//   void _register() {
//     User newUser = User(email: email, password: password);
//     registeredUsers.add(newUser);
//
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text("Registration Successful"),
//           content: Text("You have successfully registered."),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text("OK"),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   void _login() {
//     bool isValidUser = registeredUsers.any(
//           (user) => user.email == email && user.password == password,
//     );
//
//     if (isValidUser) {
//       Navigator.of(context).push(
//         MaterialPageRoute(builder: (c) {
//           return ThirdApp(email: email,password: password,);
//         }),
//       );
//     } else {
//       setState(() {
//         showError = true;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.purple,
//         actions: [
//           CircleAvatar(
//             radius: 20,
//             backgroundImage: AssetImage('assets/images/logo.png'), // Replace with your icon's path
//           ),
//           SizedBox(width: 16), // Add some spacing
//         ],
//         title: Text("FlagQuiz"),
//         centerTitle: true,
//
//       ),
//       body: Container(
//         color: Colors.grey,
//         width: double.infinity,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: TextFormField(
//                   onChanged: (value) {
//                     setState(() {
//                       email = value;
//                     });
//                   },
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(40),
//                     ),
//                     labelText: 'Email',
//                     hintText: 'Enter Your Email',
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: TextFormField(
//                   onChanged: (value) {
//                     setState(() {
//                       password = value;
//                     });
//                   },
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(40),
//                     ),
//                     labelText: 'Password',
//                     hintText: 'Enter Your Password',
//                     suffixIcon: Icon(Icons.remove_red_eye),
//                   ),
//                 ),
//               ),
//               btn(name: 'Sign In', event: _login,clr: Color.fromARGB(255, 187, 61, 121)),
//               if (showError)
//                 Text(
//                   "Invalid email or password.",
//                   style: TextStyle(color: Colors.red),
//                 ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("New User,"),
//                   TextButton(
//                     onPressed: _register,
//                     child: Text("Click Here",style: TextStyle(color: Colors.purple),),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }