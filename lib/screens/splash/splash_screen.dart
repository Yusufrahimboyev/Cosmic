import 'package:cosmic_app/router/router_names.dart';
import 'package:cosmic_app/style/app_images.dart';
import 'package:cosmic_app/style/app_logo.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _controller.forward();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, RouterNames.login),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
        child: Stack(
          children: [
            Center(
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return SizedBox(
                    height: 330,
                    width: 330,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      value: _controller.value,
                      strokeWidth: 10,
                    ),
                  );
                },
              ),
            ),
            const Center(
              child: SizedBox(
                width: 270,
                child: Image(
                  image: AssetImage(AppLogo.logo),
                ),
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterLogo(
                      size: 35,
                    ),
                    Text(
                      "Flutter",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    )
                  ],
                ),
                SizedBox(height: 72),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
