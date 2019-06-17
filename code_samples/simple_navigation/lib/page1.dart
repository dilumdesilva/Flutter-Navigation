import 'package:flutter/material.dart';
import 'package:simple_navigation/page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.blue,
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        Navigator.push(context, new MaterialPageRoute(
          builder: (context) => Page2()
        ));
      },
      tooltip:'Next Page',
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
            style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold, color: Colors.white ),
          ),
        )
    ),
  );
}

