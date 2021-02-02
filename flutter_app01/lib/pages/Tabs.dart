import 'package:flutter/material.dart';
import 'tabs/EPL.dart';
import 'tabs/Laliga.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  List _pageList = [
    LaligaPage(),
    EPLPage(),
    SeriePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News')),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("LA Liga")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("EPL")),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Serie A")),
        ],
      ),
    );
  }
}
