import 'package:flutter/material.dart';

import 'route/fade_route.dart';
import 'route/scale_route.dart';
import 'route/rotate_route.dart';
import 'route/slide_route.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(MyFadeRoute(OtherPage()));
              },
              child: Text(
                "Fade",
                style: TextStyle(fontSize: 36.0),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(MyScaleRoute(OtherPage()));
              },
              child: Text(
                "Scale",
                style: TextStyle(fontSize: 36.0),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(MyRotateRoute(OtherPage()));
              },
              child: Text(
                "Rotate",
                style: TextStyle(fontSize: 36.0),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(MySildeRoute(OtherPage()));
              },
              child: Text(
                "Slide",
                style: TextStyle(fontSize: 36.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other Page"),
      ),
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.navigate_before,
            size: 64.0,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
