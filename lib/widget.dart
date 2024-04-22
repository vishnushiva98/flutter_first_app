import 'dart:developer';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollController = ScrollController();
  List<Widget> cells = [];
  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        // setState(() {
        generateCells();
        // });
      }
    });
    generateCells();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Using GridView for arranging cells in a grid of 3 columns
    return GridView.count(
      controller: scrollController,
      crossAxisCount: 3,
      children: cells,

      // child: Column(children:List.generate(cells.length, (index) => ListTile())),
    );
  }

  void generateCells() {
    int currentLength = cells.length;

    // Single loop to generate cells
    for (int i = currentLength; i < currentLength + 30; i++) {
      Color color = (i % 2 == 0) ? Colors.green : Colors.yellow;

      cells.add(
        Container(
          alignment: Alignment.center,
          color: color,
          child: Text(
            i.toString(),
            style: TextStyle(
              color: Colors.black.withOpacity(1.0),
              decoration: TextDecoration.none, // Remove underlines
            ),
          ),
        ),
      );
    }
  }
}
