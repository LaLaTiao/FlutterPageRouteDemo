import 'package:flutter/material.dart';

class MyFadeRoute extends PageRouteBuilder {
  final Widget _widget;

  MyFadeRoute(this._widget)
      : super(
            //3个参数,分别是 转场动画的执行时间,转场页面构造器,转场动画构造器
            //第一个参数去设置动画的持续时间.第二个参数默认就好,是上个参数可以去修改begin/end 以及转场动画的 插值器效果.默认还是使用线性插值器.
            transitionDuration: const Duration(seconds: 1),
            pageBuilder: (BuildContext context, Animation animation1,
                Animation animation2) {
              return _widget;
            },
            transitionsBuilder: (BuildContext context, Animation animation1,
                    Animation animation2, Widget child) =>
                myFadeAnimation(animation1, child));
}

myFadeAnimation(Animation animation, Widget child) {
  return FadeTransition(
    opacity: Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: animation, curve: Curves.linear)),
    child: child,
  );
}
