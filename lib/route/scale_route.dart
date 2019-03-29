import 'package:flutter/material.dart';

class MyScaleRoute extends PageRouteBuilder {
  final Widget _widget;

  MyScaleRoute(this._widget)
      : super(
            transitionDuration: const Duration(seconds: 1),
            pageBuilder: (BuildContext context, Animation animation1,
                Animation animation2) {
              return _widget;
            },
            transitionsBuilder: (BuildContext context, Animation animation1,
                    Animation animation2, Widget child) =>
                myScaleAnimation(animation1, child));
}

myScaleAnimation(Animation animation, Widget child) {
  return ScaleTransition(
    scale: Tween(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: animation, curve: Curves.linear)),
    child: child,
  );
}
