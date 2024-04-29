import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> cells = [];
  List<String> pokemon = [
    "images/evee.png",
    "images/charmender.png",
    "images/Jigglypuff_art.png",
    "images/char-pikachu.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        // itemCount: 100, //  adjust count needed
        itemBuilder: (BuildContext context, int rowIndex) {
          return Row(
            children: List.generate(
              3, // Generate 3 columns for each row
              (columnIndex) {
                int index = rowIndex * 3 + columnIndex;
                final rng = Random();
                String imagePath = pokemon[rng.nextInt(pokemon.length)];
                Color color = (index % 2 == 0) ? Colors.green : Colors.yellow;
                return Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      // width: double.infinity,
                      // height: double.infinity,
                      color: color,
                      alignment: Alignment.center,

                      child: Image.asset(imagePath),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}







// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List<Widget> cells = [];
  // List<String> pokemon = [
  //   // "images/eve.png",
  //   "images/balbazor.jpg",
  //   "images/Jigglypuff_art.png",
  //   "images/pecachu.jpg"
  // ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: (pokemon.length / 3).ceil(),
//         itemBuilder: (BuildContext context, int rowIndex) {
//           return Row(
//             children: List.generate(
//               3,
//               (columnIndex) {
//                 int index = rowIndex * 3 + columnIndex;
//                 Color color = (index % 2 == 0) ? Colors.green : Colors.yellow;
//                 if (index < pokemon.length) {
//                   return Expanded(
//                     child: AspectRatio(
//                       aspectRatio: 1,
//                       child: Container(
//                         color: color,
//                         alignment: Alignment.center,
//                         child: Image.asset(
//                           pokemon[index],
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                   );
//                 } else {
//                   return Expanded(child: Container());
//                 }
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }













// ******* grid view - listview loop *******




// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   ScrollController scrollController = ScrollController();
//   List<Widget> cells = [];

//   @override
//   void initState() {
//     scrollController.addListener(() {
//       if (scrollController.position.pixels ==
//           scrollController.position.maxScrollExtent) {
//         generateCells();
//       }
//     });
//     generateCells();
//     //  implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       controller: scrollController,
//       crossAxisCount: 3,
//       children: cells,
//     );
//   }

//   void generateCells() {
//     // Calculate  total number of cells want to generate
//     int currentLength = cells.length + 18;

//     // Generate cells using ListView.builder
//     cells.addAll(List.generate(currentLength, (index) {
      // Color color = (index % 2 == 0) ? Colors.green : Colors.yellow;
      // return Container(
      //   alignment: Alignment.center,
      //   color: color,
      //   child: Text(
      //     index.toString(),
      //     style: TextStyle(
      //       color: Colors.black.withOpacity(1.0),
      //       decoration: TextDecoration.none, // Remove underlines
//           ),
//         ),
//       );
//     }));
//   }
// }





// // import 'dart:developer';

// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   ScrollController scrollController = ScrollController();
//   List<Widget> cells = [];
//   @override
//   void initState() {
//     scrollController.addListener(() {
//       if (scrollController.position.pixels ==
//           scrollController.position.maxScrollExtent) {
//         // setState(() {
//         generateCells();
//         // });
//       }
//     });
//     generateCells();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Using GridView for arranging cells in a grid of 3 columns
//     return GridView.count(
//       controller: scrollController,
//       crossAxisCount: 5,
//       children: cells,

//       // child: Column(children:List.generate(cells.length, (index) => ListTile())),
//     );
//   }

//   void generateCells() {
//     // ListView(
//     //   children: [],
//     // );

//     int currentLength = cells.length;

//     // Single loop to generate cells
//     for (int i = currentLength; i < currentLength + 30; i++) {
//       Color color = (i % 2 == 0) ? Colors.green : Colors.yellow;

//       cells.add(
//         Container(
//           alignment: Alignment.center,
//           color: color,
//           child: Text(
//             i.toString(),
//             style: TextStyle(
//               color: Colors.black.withOpacity(1.0),
//               decoration: TextDecoration.none, // Remove underlines
//             ),
//           ),
//         ),
//       );
//     }
//   }
// }
