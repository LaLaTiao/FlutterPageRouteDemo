import 'package:flutter/material.dart';

class MySildeRoute extends PageRouteBuilder {
  final Widget _widget;

  MySildeRoute(this._widget)
      : super(
          transitionDuration: const Duration(seconds: 1),
          pageBuilder: (BuildContext context, Animation animation1,
                  Animation animation2) =>
              _widget,
          transitionsBuilder: (BuildContext context, Animation animation1,
                  Animation animation2, Widget child) =>
              mySlideAnimation(animation1, child),
        );
}

Widget mySlideAnimation(Animation animation, Widget child) {
  return SlideTransition(
    position: Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0))
        .animate(CurvedAnimation(parent: animation, curve: Curves.linear)),
    child: child,
  );
}
