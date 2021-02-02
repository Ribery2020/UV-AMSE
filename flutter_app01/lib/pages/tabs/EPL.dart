import 'package:flutter/material.dart';
import 'package:flutter_app01/res/ListEPL.dart';

class EPLPage extends StatefulWidget {
  @override
  _EPLPageState createState() => _EPLPageState();
}

class _EPLPageState extends State<EPLPage> {
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
