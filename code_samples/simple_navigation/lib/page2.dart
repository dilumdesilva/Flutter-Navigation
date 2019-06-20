import 'package:flutter/material.dart';
import 'package:simple_navigation/user.dart';

class Page2 extends StatelessWidget {
  final User user;

  const Page2({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.amber,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          tooltip: 'Next Page',
          child: IconTheme(
            data: new IconThemeData(
              color: Colors.blue,
            ),
            child: new Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
            child: Center(
          child: Text(
            'Welcome ${this.user.name}!',
            style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        )),
      );
}
