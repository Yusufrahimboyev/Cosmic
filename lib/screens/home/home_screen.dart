import 'package:cosmic_app/style/app_images.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.backImagesFirst),
          ),
        ),
        child: SizedBox.expand(),
      ),
    );
  }
}
