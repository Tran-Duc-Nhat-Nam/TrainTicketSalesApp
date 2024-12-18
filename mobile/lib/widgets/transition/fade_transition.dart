import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Page<dynamic> fadingNavigation(
    BuildContext context, GoRouterState state, Widget child) {
  return CustomTransitionPage(
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
        child: child,
      );
    },
  );
}
