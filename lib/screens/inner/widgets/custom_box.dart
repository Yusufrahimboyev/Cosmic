import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  const CustomBox({
    super.key,
    required this.child,
    this.radius = const BorderRadius.all(Radius.circular(25)),
    this.opacity = 0.5,
  });

  final Widget child;
  final BorderRadiusGeometry radius;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: radius,
        color: Colors.black.withOpacity(0.4),
        border: Border.all(
          width: 2,
          color: Colors.black.withOpacity(opacity),
        ),
      ),
      child: child,
    );
  }
}
