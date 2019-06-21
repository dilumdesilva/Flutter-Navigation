import 'package:flutter/material.dart';
import 'package:simple_navigation/user.dart';


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

        //Declaring Routes
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
        User user = new User(name: 'Dilum');
        Navigator.of(context).pushNamed('/page2', arguments: user);
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
  User user;
  
  @override
  Widget build(BuildContext context) {
    RouteSettings settings = ModalRoute.of(context).settings;
    user = settings.arguments;
    return Scaffold(
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
              'Hello ${this.user.name}',
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold, color: Colors.white ),
            ),
          )
      ),
    );
  }
}