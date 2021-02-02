import 'package:flutter/material.dart';
import 'pages/Tabs.dart';
//import 'res/listData.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: Tabs());
  }
}

// class HomeContent extends StatelessWidget {

//   }
//   @override
//   Widget build(BuildContext context) {
//     return Text("xxx");
//   }
// }
