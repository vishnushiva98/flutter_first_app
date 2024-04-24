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
//     // Using GridView for arranging cells in a grid of 5 columns
//     return GridView.count(
//       controller: scrollController,
//       crossAxisCount: 3,
//       children: cells,
//     );
//   }



//   void generateCells() {
//     // Calculate the total number of cells you want to generate
//     int totalCells = cells.length + 30;

//     // Generate cells using ListView.builder
//     cells.addAll(List.generate(
//       totalCells,
//       (index) {
//         Color color = (index % 2 == 0) ? Colors.green : Colors.yellow;
//         return Container(
//           alignment: Alignment.center,
//           color: color,
//           child: Text(
//             index.toString(),
//             style: TextStyle(
//               color: Colors.black.withOpacity(1.0),
//               decoration: TextDecoration.none, // Remove underlines
//             ),
//           ),
//         );
//       },
//     ));
//   }
// }


















// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List<Widget> cells = [];
//   ScrollController _scrollController = ScrollController();

//   @override
//   void initState() {
//     super.initState();
//     _generateCells(); // Initially generate cells
//     _scrollController.addListener(_scrollListener); // Add scroll listener
//   }

  

//   // Method to generate more cells
//   void _generateCells() {
//     int currentLength = cells.length;
//     for (int i = currentLength; i < currentLength + 18; i++) {
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

//   // Scroll listener
//   void _scrollListener() {
//     if (_scrollController.position.pixels ==
//         _scrollController.position.maxScrollExtent) {
//       // At the bottom of the list
//       setState(() {
//         _generateCells(); // Generate more cells
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GridView.builder(
//         controller: _scrollController, // Attach scroll controller
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           return cells[index];
//         },
//         itemCount: cells.length,
//       ),
//     );
//   }
// }





// -------single loop-----

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     List<Widget> cells = [];

//     // Single loop to generate cells
//     for (int i = 0; i < 18; i++) {
//       Color color = (i % 2 == 0) ? Colors.green : Colors.yellow;

//       cells.add(
//         Expanded(
//           child: Container(
//             alignment: Alignment.center,
//             color: color,
//             child: Text(
//               i.toString(),
//               style: TextStyle(
//                 color: Colors.black.withOpacity(1.0),
//                 decoration: TextDecoration.none, // Remove underlines
//               ),
//             ),
//           ),
//         ),
//       );
//     }

//     // Using GridView for arranging cells in a grid of 3 columns
//     return GridView.count(
//       crossAxisCount: 3,
//       children: cells,
//     );
//   }
// }

