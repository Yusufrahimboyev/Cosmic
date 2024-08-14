import 'package:cosmic_app/style/app_images.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.backImagesFirst),
          ),
        ),
        child: Scaffold(
          backgroundColor: WidgetStateColor.transparent,
          appBar: AppBar(
            backgroundColor: const Color(0xff091522).withOpacity(0.4),
            shadowColor: Colors.black,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(28),
                bottomRight: Radius.circular(28),
              ),
              side: BorderSide(
                width: 2,
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
