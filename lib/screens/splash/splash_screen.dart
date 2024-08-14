import 'package:cosmic_app/style/app_images.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        child: Text(""),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.backImagesFirst),
          ),
        ),
      ),
    );
  }
}
