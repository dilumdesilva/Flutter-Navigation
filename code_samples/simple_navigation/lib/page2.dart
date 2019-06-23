import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      //If you want system to handle this back operation you can pass 'true'
      //or else if you have your own logic then pass 'false'
      //onWillPop: () => Future.value(false),
      onWillPop: () async{
        _navigatorWithResults(context, 'btn_back');
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.amber,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _navigatorWithResults(context, 'btn_float');
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
            'Page Two',
            style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        )),
      ),
    );
  }

  void _navigatorWithResults(BuildContext context, dynamic result) {
    Navigator.pop(context, result);
  }
}
