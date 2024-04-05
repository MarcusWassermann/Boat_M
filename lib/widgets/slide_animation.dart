import 'package:flutter/material.dart';

class SlideAnimation extends PageRouteBuilder {
  final Widget page;

  SlideAnimation({required this.page})
      : super(
          transitionDuration: const Duration(seconds: 3),
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = const Offset(0.0, 1.0);
            var end = Offset.zero;
            var curve = Curves.ease;

            var tween = Tween(begin: begin, end: end).chain(
              CurveTween(curve: curve),
            );

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
}
