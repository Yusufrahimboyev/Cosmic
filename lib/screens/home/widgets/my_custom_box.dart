import 'package:flutter/material.dart';

class MyCustomBox extends StatelessWidget {
  const MyCustomBox({
    super.key,
    required this.child,
    this.borderRadius = 28,
  });

  final Widget child;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0xff091522).withOpacity(0.8),
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          width: 2,
          color: Colors.black.withOpacity(0.3),
        ),
      ),
      child: child,
    );
  }
}
