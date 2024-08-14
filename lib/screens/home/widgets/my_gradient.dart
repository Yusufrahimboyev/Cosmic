import 'package:flutter/material.dart';

class MyGradient extends StatelessWidget {
  const MyGradient({
    super.key,
    this.dimension = 24,
  });

  final double? dimension;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff00e5e5),
              Color(0xff72a5f2),
              Color(0xffe961ff),
            ],
            end: Alignment.bottomLeft,
            begin: Alignment.topRight,
          ),
        ),
        child: SizedBox.square(
          dimension: dimension,
        ),
      ),
    );
  }
}
