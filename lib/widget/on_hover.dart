import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/widgets.dart';

class MyWidget extends StatefulWidget {
  final Widget child;
  const MyWidget({super.key, required this.child});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..translate(0, -8, 0);
    final transform = isHover ? hoveredTransform : Matrix4.identity();

    return MouseRegion(
        onEnter: (event) => onEnterd(true),
        onExit: (event) => onEnterd(false),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          transform: transform,
          child: widget.child,
        ));
  }

  void onEnterd(bool isHover) {
    setState(() {
      this.isHover = isHover;
    });
  }
}
