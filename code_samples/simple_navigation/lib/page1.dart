import 'package:flutter/material.dart';
import 'package:simple_navigation/page2.dart';
import 'package:simple_navigation/user.dart';

class Page1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Page1();
  }
}

class _Page1 extends State<Page1> {
  final textEditingController = TextEditingController();

  void dispose(){
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.blue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          User user = new User(name: textEditingController.text);
          Navigator.push(
              context, new MaterialPageRoute(builder: (context) => Page2(user: user,)));
          textEditingController.clear();
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
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Hello,\nWhat should I call you?',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            new SizedBox(
              height: 10.0,
            ),
            Container(
              margin: new EdgeInsets.symmetric(horizontal: 50.0),
              child: Theme(
                data: new ThemeData(
                  primaryColor: Colors.white70,
                ),
                child: new TextField(
                  controller: textEditingController,
                  style: new TextStyle(
                      fontSize: 26.0, height: 1.0, color: Colors.white),
                  autofocus: true,
                  decoration: InputDecoration(
                      hintText: 'John..',
                      hintStyle:
                      TextStyle(fontSize: 20.0, color: Colors.white70)),
                ),
              ),
            )
          ],
        ),
      ));
}

