import 'package:flutter/material.dart';

class MyFilledButton extends StatefulWidget {
  const MyFilledButton({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  State<MyFilledButton> createState() => _MyFilledButtonState();
}

class _MyFilledButtonState extends State<MyFilledButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF00E5E5),
              Color(0xFF72A5F2),
              Color(0xFFE961FF),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: FilledButton(
          onPressed: widget.onPressed,
          style: FilledButton.styleFrom(
              fixedSize: const Size(160, 50),
              backgroundColor: Colors.transparent,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              )
          ),
          child: Text(
            "Visit",
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
