import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

     routes: <String, WidgetBuilder>{
        '/page1': (BuildContext context) => new Page1(),
        '/page2': (BuildContext context) => new Page2(),
     },

      home: Page1()
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.blue,
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        Navigator.of(context).pushNamed('/page2');
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

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.amber,
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        Navigator.pop(context);
      },
      tooltip:'Next Page',
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
            'Page Two',
            style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold, color: Colors.white ),
          ),
        )
    ),
  );
}

