import 'package:flutter/material.dart';
import 'package:flutter_app01/res/ListLaliga.dart';

class LaligaPage extends StatefulWidget {
  @override
  _LaligaPageState createState() => _LaligaPageState();
}

class _LaligaPageState extends State<LaligaPage> {
  @override
  List<Widget> _getData() {
    var tempList = listData.map((value) {
      return ListTile(
        leading: Image.asset(
          value["image"],
          width: 100,
          height: 50,
        ),
        title: Text(value["title"]),
        //subtitle: Text(value["author"]),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData(),
    );
  }
}
