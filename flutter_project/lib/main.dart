import 'package:flutter/material.dart';
import 'package:flutter_project/service/http_request.dart';
import '../models/poke.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PokApp'),
      ),
      body: FutureBuilder<List<Poke>>(

        future: fetchDataAll(),
        builder: (context, snapshot) {

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No items found'));
          } else {

            return GridView.builder(
              padding: EdgeInsets.all(8.0), // Optional: Adds padding around the grid
              shrinkWrap: true, // Ensures the grid does not take up more space than necessary
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Two items per row
                childAspectRatio: 3 / 2, // Aspect ratio of the tiles (width / height)
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                // Join the types into a single string
                String types = snapshot.data![index].type.join(', ');

                return Card(// Wrapping each tile in a Card for better visual separation
                  color: getColorFromType(snapshot.data![index].type),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(snapshot.data![index].imageUrl),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          snapshot.data![index].name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Types: $types',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

//


// final List<int> _items = List<int>.generate(51, (int index) => index);

// void main() {
//   runApp(const MyApp());
//   // runApp(const AppBarApp());
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   TestState createState() => TestState();
// }
//
// class TestState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Column(
//
//       ),
//     );
//   }
// }


// class AppBarApp extends StatelessWidget {
//   const AppBarApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         colorSchemeSeed: const Color(0xff6750a4),
//         useMaterial3: true,
//       ),
//       home: const AppBarExample(),
//     );
//   }
// }
//
// class AppBarExample extends StatefulWidget {
//   const AppBarExample({super.key});
//
//   @override
//   State<AppBarExample> createState() => _AppBarExampleState();
// }
//
// class _AppBarExampleState extends State<AppBarExample> {
//   bool shadowColor = false;
//   double? scrolledUnderElevation;
//
//   @override
//   Widget build(BuildContext context) {
//     final ColorScheme colorScheme = Theme.of(context).colorScheme;
//     final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
//     final Color evenItemColor = colorScheme.primary.withOpacity(0.50);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test'),
//         scrolledUnderElevation: scrolledUnderElevation,
//         shadowColor: shadowColor ? Theme.of(context).colorScheme.shadow : null,
//       ),
//       body: GridView.builder(
//         itemCount: _items.length,
//         padding: const EdgeInsets.all(8.0),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           childAspectRatio: 2.0,
//           mainAxisSpacing: 10.0,
//           crossAxisSpacing: 10.0,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           // if (index == 0) {
//           //   return Center(
//           //     child: Text(
//           //       'Scroll to see the Appbar in effect.',
//           //       style: Theme.of(context).textTheme.labelLarge,
//           //       textAlign: TextAlign.center,
//           //     ),
//           //   );
//           // }
//           return Container(
//             alignment: Alignment.center,
//             // tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
//             decoration: BoxDecoration(
//               // borderRadius: BorderRadius.circular(20.0),
//               color: _items[index].isOdd
//                   ? oddItemColor
//                   : evenItemColor,
//             ),
//             child: Text('Item $index'),
//           );
//         },
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: Padding(
//           padding: const EdgeInsets.all(8),
//           child: OverflowBar(
//             overflowAlignment: OverflowBarAlignment.center,
//             alignment: MainAxisAlignment.center,
//             overflowSpacing: 15.0,
//             children: <Widget>[
//               ElevatedButton.icon(
//                 onPressed: () {
//                   setState(() {
//                     shadowColor = !shadowColor;
//                   });
//                 },
//                 icon: Icon(
//                   shadowColor ? Icons.visibility_off : Icons.visibility,
//                 ),
//                 label: const Text('shadow color'),
//               ),
//               const SizedBox(width: 5),
//               ElevatedButton(
//                 onPressed: () {
//                   if (scrolledUnderElevation == null) {
//                     setState(() {
//                       // Default elevation is 3.0, increment by 1.0.
//                       scrolledUnderElevation = 4.0;
//                     });
//                   } else {
//                     setState(() {
//                       scrolledUnderElevation = scrolledUnderElevation! + 1.0;
//                     });
//                   }
//                 },
//                 child: Text(
//                   'scrolledUnderElevation: ${scrolledUnderElevation ?? 'default'}',
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'App_test'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});


//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _TestState();
//
// }
//
// class _TestState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('AppBar Demo'),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.add_alert),
//             tooltip: 'Show Snackbar',
//             onPressed: () {
//               ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text('This is a snackbar')));
//             },
//           ),
//           IconButton(
//             icon: const Icon(Icons.navigate_next),
//             tooltip: 'Go to the next page',
//             onPressed: () {
//               Navigator.push(context, MaterialPageRoute<void>(
//                 builder: (BuildContext context) {
//                   return Scaffold(
//                     appBar: AppBar(
//                       title: const Text('Next page'),
//                     ),
//                     body: const Center(
//                       child: Text(
//                         'This is the next page',
//                         style: TextStyle(fontSize: 24),
//                       ),
//                     ),
//                   );
//                 },
//               ));
//             },
//           ),
//         ],
//       ),
//       body: const Center(
//         child: Text(
//           'This is the home page',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text("go"),
  //       elevation: 3,
  //       shadowColor: Colors.blue,
  //       centerTitle: true,
  //     ),
  //     body: const Column(
  //         mainAxisSize: MainAxisSize.max,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Row(
  //             mainAxisSize: MainAxisSize.max,
  //             children: [
  //               Padding(
  //                 padding: EdgeInsets.symmetric(horizontal: 12.0),
  //                 child: Icon(Icons.male),
  //               ),
  //               Text("Homme"),
  //               Spacer()
  //             ],
  //           ),
  //           Row(
  //             mainAxisSize: MainAxisSize.max,
  //             children: [
  //               Padding(
  //                 padding: EdgeInsets.symmetric(horizontal: 12.0),
  //                 child: Icon(Icons.female),
  //               ),
  //               Text("Femme"),
  //               Spacer()
  //             ],
  //           ),
  //           Row(
  //             mainAxisSize: MainAxisSize.max,
  //             children: [
  //               Padding(
  //                 padding: EdgeInsets.symmetric(horizontal: 12.0),
  //                 child: Icon(Icons.favorite),
  //               ),
  //               Text("Humain"),
  //               Spacer()
  //             ],
  //           ),
  //
  //         ]
  //     ),
  //   );
  // }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold( //un screen n'a pas cette spécificité
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'YES',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }




