import 'dart:ui';
import 'package:flutter/material.dart';

class MyBlurWidget extends StatelessWidget {
  const MyBlurWidget({
    required this.child,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(40),
    ),
    this.blurFilter = 0,
    super.key,
  });

  final Widget child;
  final BorderRadius borderRadius;
  final double blurFilter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          borderRadius: borderRadius,
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: RepaintBoundary(
          child: ClipRRect(
            borderRadius: borderRadius,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: blurFilter, sigmaY: blurFilter),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
