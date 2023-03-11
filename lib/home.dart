import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_website/responsive/desktop_body.dart';
import 'package:my_website/responsive/mobile_body.dart';
import 'package:my_website/responsive/responsive_layout.dart';
import 'package:my_website/responsive/tablet_body.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile_body: MyMObileBody(),
        tablet_body: MyTabletBody(),
        destop_body: MyHomePage());
  }
}
