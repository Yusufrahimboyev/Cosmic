import 'package:flutter/material.dart';

class MyInfoBox extends StatelessWidget {
  const MyInfoBox({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.text,
  });

  final String icon;
  final String title;
  final TextSpan subtitle;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ImageIcon(
            AssetImage(icon),
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(height: 8),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                      ),
                ),
                subtitle,
              ],
              style: const TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            text,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
