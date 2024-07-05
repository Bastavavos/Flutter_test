import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          centerTitle: true,
          title: const Text('Profile', style: TextStyle(color: Colors.white)),
        ),

        body: Stack(
          children: <Widget>[
            Container(
              width: 1000, // Specify the width of the container
              height: 200, // Specify the height of the container
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/bg1.png'), // Local asset
                  fit: BoxFit.cover, // Cover the entire container
                ),
              ),
            ),
            const Positioned.fill(
              child:Padding(
                padding: EdgeInsets.only(top: 100),
                child: Align( // This centers the CircleAvatar within the filled area
                alignment: Alignment.center, // Centers the CircleAvatar
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/img/profile.png'),
                ),
              ),
              ),// This makes the CircleAvatar fill the first Container
            ),
          ],
        ),
      )
    );
  }
}





// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _TestState();
// }


// class _TestState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Profile"),
//           titleTextStyle: const TextStyle(color: Colors.white),
//           elevation: 3,
//           centerTitle: true,
//           backgroundColor: Colors.blue,
//         ),
//         body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 SizedBox(height: 500, width: 200, child: Image.asset('assets/img/bg1.png'),), // Optional spacing between the CircleAvatar and the Image below
//                 const CircleAvatar(
//                   radius: 50, // Specify the radius of the CircleAvatar
//                   backgroundImage: AssetImage('assets/img/profile.png'), // Path to your avatar image
//                 ),
//               ],
//             )
//           ),
//     );
//   }
// }