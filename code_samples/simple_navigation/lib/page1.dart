import 'package:flutter/material.dart';
import 'package:simple_navigation/page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.blue,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            var result = await Navigator.push(
                context, new MaterialPageRoute(builder: (context) => Page2()));

            _navigationResultMsg(context, result);
          },
          tooltip: 'Next Page',
          child: IconTheme(
            data: new IconThemeData(
              color: Colors.blue,
            ),
            child: new Icon(Icons.arrow_forward),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
            child: Center(
          child: Text(
            'Page One',
            style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        )),
      );

  void _navigationResultMsg(BuildContext context, dynamic result) {
    if (result == 'btn_back') {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Navigation has perfomed with back button'),
              ));
    } else if (result == 'btn_float') {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Navigation has perfomed with floating back button'),
          ));
    }
  }
}
