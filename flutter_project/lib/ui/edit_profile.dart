import 'package:flutter/material.dart';
import '../models/user.dart';
import 'package:flutter/src/material/text_form_field.dart';

void main() {
  runApp(const EditProfile());
}

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  User user = User();

  TextEditingController pseudoController = TextEditingController();
  TextEditingController levelController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  void dispose(){
    pseudoController.dispose();
    levelController.dispose();
    bioController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          elevation: 0,
          centerTitle: true,
          title:
              const Text('Edit Profile', style: TextStyle(color: Colors.white)),
        ),
        body: const Column(
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/img/profile.png'),
              ),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('PSEUDO',
                        style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 2.0,
                        )),
                  ]),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'pseudo',
                      style: TextStyle(
                          color: Colors.amber,
                          letterSpacing: 2.0,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('LEVEL',
                        style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 2.0,
                        )),
                  ]),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '9',
                      style: TextStyle(
                          color: Colors.amber,
                          letterSpacing: 2.0,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('BIO',
                        style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 2.0,
                        )),
                  ]),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'jsp jsp jsp',
                      style: TextStyle(
                          color: Colors.amber,
                          letterSpacing: 2.0,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'test@gmail.testos',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.grey[850],
//         appBar: AppBar(
//           backgroundColor: Colors.grey[850],
//           elevation: 0,
//           centerTitle: true,
//           title:
//           const Text('Edit Profile', style: TextStyle(color: Colors.white)),
//         ),
//         body: const Column(
//           children: <Widget>[
//             Center(
//               child: CircleAvatar(
//                 radius: 50,
//                 backgroundImage: AssetImage('assets/img/profile.png'),
//               ),
//             ),
//             SizedBox(height: 30.0),
//             Padding(
//               padding: EdgeInsets.only(left: 30.0),
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: <Widget>[
//                     Text('NAME',
//                         style: TextStyle(
//                           color: Colors.grey,
//                           letterSpacing: 2.0,
//                         )),
//                   ]),
//             ),
//             SizedBox(height: 10.0),
//             Padding(
//               padding: EdgeInsets.only(left: 30.0),
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       'Profile_Test',
//                       style: TextStyle(
//                           color: Colors.amber,
//                           letterSpacing: 2.0,
//                           fontSize: 20.0,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ]),
//             ),
//             SizedBox(height: 30.0),
//             Padding(
//               padding: EdgeInsets.only(left: 30.0),
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: <Widget>[
//                     Text('LEVEL',
//                         style: TextStyle(
//                           color: Colors.grey,
//                           letterSpacing: 2.0,
//                         )),
//                   ]),
//             ),
//             SizedBox(height: 10.0),
//             Padding(
//               padding: EdgeInsets.only(left: 30.0),
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       '9',
//                       style: TextStyle(
//                           color: Colors.amber,
//                           letterSpacing: 2.0,
//                           fontSize: 20.0,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ]),
//             ),
//             SizedBox(height: 30.0),
//             Padding(
//                 padding: EdgeInsets.only(left: 30.0),
//                 child: Row(
//                   children: <Widget>[
//                     Icon(
//                       Icons.email,
//                       color: Colors.white,
//                     ),
//                     SizedBox(height: 10.0),
//                     Text(
//                       'test@gmail.testos',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18.0,
//                         letterSpacing: 1.0,
//                       ),
//                     ),
//                   ],
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class EditProfile extends StatefulWidget {
//   const EditProfile({super.key});
//
//   @override
//   State<EditProfile> createState() => _EditProfileState();
// }
//
// class _EditProfileState extends State<EditProfile> {
//
//   int counter = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.grey[850],
//         appBar: AppBar(
//           backgroundColor: Colors.grey[850],
//           elevation: 0,
//           centerTitle: true,
//           title:
//           const Text('Edit Profile', style: TextStyle(color: Colors.white)),
//         ),
//         body: const Column(
//           children: <Widget>[
//             Center(
//               child: CircleAvatar(
//                 radius: 50,
//                 backgroundImage: AssetImage('assets/img/profile.png'),
//               ),
//             ),
//             SizedBox(height: 30.0),
//             Padding(
//               padding: EdgeInsets.only(left: 30.0),
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: <Widget>[
//                     Text('NAME',
//                         style: TextStyle(
//                           color: Colors.grey,
//                           letterSpacing: 2.0,
//                         )),
//                   ]),
//             ),
//             SizedBox(height: 10.0),
//             Padding(
//               padding: EdgeInsets.only(left: 30.0),
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       'Profile_Test',
//                       style: TextStyle(
//                           color: Colors.amber,
//                           letterSpacing: 2.0,
//                           fontSize: 20.0,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ]),
//             ),
//             SizedBox(height: 30.0),
//             Padding(
//               padding: EdgeInsets.only(left: 30.0),
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: <Widget>[
//                     Text('LEVEL',
//                         style: TextStyle(
//                           color: Colors.grey,
//                           letterSpacing: 2.0,
//                         )),
//                   ]),
//             ),
//             SizedBox(height: 10.0),
//             Padding(
//               padding: EdgeInsets.only(left: 30.0),
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       '9',
//                       style: TextStyle(
//                           color: Colors.amber,
//                           letterSpacing: 2.0,
//                           fontSize: 20.0,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ]),
//             ),
//             SizedBox(height: 30.0),
//             Padding(
//                 padding: EdgeInsets.only(left: 30.0),
//                 child: Row(
//                   children: <Widget>[
//                     Icon(
//                       Icons.email,
//                       color: Colors.white,
//                     ),
//                     SizedBox(height: 10.0),
//                     Text(
//                       'test@gmail.testos',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18.0,
//                         letterSpacing: 1.0,
//                       ),
//                     ),
//                   ],
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }
