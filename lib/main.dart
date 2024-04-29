import 'package:flutter/material.dart';
// import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/widget.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// void main() {
//   runApp(
//     MyApp(
//       items: List<String>.generate(10000, (i) => 'Item $i'),
//     ),
//   );
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
    );
  }
}
