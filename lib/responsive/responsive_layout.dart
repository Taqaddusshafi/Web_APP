import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Responsive extends StatelessWidget {
  final Widget mobile_body;
  final Widget tablet_body;
  final Widget destop_body;

  Responsive(
      {required this.mobile_body,
      required this.tablet_body,
      required this.destop_body});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobile_body;
        } else if (constraints.maxWidth < 1200) {
          return tablet_body;
        } else {
          return destop_body;
        }
      },
    );
  }
}
