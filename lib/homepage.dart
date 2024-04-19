
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> rows = [];

    // Loop to generate each row
    for (int row = 0; row < 6; row++) {
      List<Widget> rowWidgets = [];

      // Loop to generate widgets in each row
      for (int col = 0; col < 3; col++) {
        int index = row * 3 + col;
        Color color = (index % 2 == 0) ? Colors.green : Colors.yellow;

        rowWidgets.add(
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: color,
              child: Text(
                index.toString(),
                style: TextStyle(
                  color: Colors.black.withOpacity(1.0),
                  decoration: TextDecoration.none, // Remove underlines
                ),
              ),
            ),
          ),
        );
      }

      // Add the row to the list of rows
      rows.add(
        Expanded(
          child: Row(
            children: rowWidgets,
          ),
        ),
      );
    }

    return Column(
      children: rows,
    );
  }
}



    // Column(children: [
    //   Expanded(
    //     // flex: 4,
    //     child: Row(children: [
    //       Expanded(
    //         // flex: 3,
    // child: Container(
    //   alignment: Alignment.center,
    //   color: Colors.yellow,
    //   child: Text(
    //     "0",
    //     style: TextStyle(color: Colors.black.withOpacity(1.0)),
    //   ),
    // ),
    //       )
    //     ]),
    //   ),
    // ]);
//   }
//   return Column(children: stars);
// }
// }

// class newDemo {
//   void newMethod() {
   
//     Container(
//       alignment: Alignment.center,
//       color: Colors.green,
//       child: Text(
//         "0",
//         style: TextStyle(color: Colors.black.withOpacity(1.0)),
//       ),
//     );
//   }
// }
