import 'package:flutter/material.dart';

const int largeScreenSize = 1200;

class Responsiveness extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;
  const Responsiveness(
      {Key? key, required this.smallScreen, required this.largeScreen})
      : super(key: key);

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      double _width = constraints.maxWidth;
      if (_width < largeScreenSize) {
        return smallScreen;
      } else {
        return largeScreen;
      }
    }));
  }
}
