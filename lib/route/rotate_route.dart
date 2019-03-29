import 'package:flutter/material.dart';

import 'scale_route.dart';

class MyRotateRoute extends PageRouteBuilder {
  final Widget _widget;

  MyRotateRoute(this._widget)
      : super(
          transitionDuration: const Duration(seconds: 1),
          pageBuilder: (BuildContext context, Animation animation1,
                  Animation animation2) =>
              _widget,
          transitionsBuilder: (BuildContext context, Animation animation1,
                  Animation animation2, Widget child) =>
              myRotateAnimation(animation1, child),
        );
}

myRotateAnimation(Animation animation, Widget child) {
  return RotationTransition(
    turns: Tween(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: animation, curve: Curves.linear)),
    child: myScaleAnimation(animation, child),
  );
}
