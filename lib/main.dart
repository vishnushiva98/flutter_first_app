// import 'package:flutter/material.dart';

// void main() => runApp(HomePage());

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             color: Colors.lightGreen[600],
//             width: 100,
//             height: 100,
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

//1st row

          children: [
            Expanded(
              // flex: 4,
              child: Row(
                children: [
                  Expanded(
                    // flex: 3,
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.green,
                      child: Text("0",
                      style: TextStyle(color: Colors.black.withOpacity(1.0)
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    // flex: 3,
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.yellow,
                      child: Text("1"),
                    ),
                  ),
                  Expanded(
                    // flex: 3,
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.green,
                      child: Text("2"),
                    ),
                  ),
                ],
              ),
            ),

//2 row

            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.yellow,
                            child: Text("3"),
                          ),
                        ),
                        Expanded(
                          // flex: 3,
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.green,
                            child: Text("4"),
                          ),
                        ),
                        Expanded(
                          // flex: 3,
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.yellow,
                            child: Text("5"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

// 3rd row

            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.green,
                            child: Text("6"),
                          ),
                        ),
                        Expanded(
                          // flex: 3,
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.yellow,
                            child: Text("7"),
                          ),
                        ),
                        Expanded(
                          // flex: 3,
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.green,
                            child: Text("8"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

//4th row

            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.yellow,
                            child: Text("9"),
                          ),
                        ),
                        Expanded(
                          // flex: 3,
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.green,
                            child: Text("10"),
                          ),
                        ),
                        Expanded(
                          // flex: 3,
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.yellow,
                            child: Text("11"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

//5th row

            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.green,
                            child: Text("12"),
                          ),
                        ),
                        Expanded(
                          // flex: 3,
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.yellow,
                            child: Text("13"),
                          ),
                        ),
                        Expanded(
                          // flex: 3,
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.green,
                            child: Text("14"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

//6th row

            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.yellow,
                            child: Text("15"),
                          ),
                        ),
                        Expanded(
                          // flex: 3,
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.green,
                            child: Text("16"),
                          ),
                        ),
                        Expanded(
                          // flex: 3,
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.yellow,
                            child: Text("17"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
