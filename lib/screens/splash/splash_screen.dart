import 'package:cosmic_app/router/router_names.dart';
import 'package:cosmic_app/style/app_images.dart';
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
      duration: Duration(seconds: 3),
    );
    _controller.forward();
    Future.delayed(Duration(seconds: 4),() => Navigator.pushReplacementNamed(context, RouterNames.login),);
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
                    })),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "cosmic",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 75,
                        color: Colors.white),
                  ),
                ),
                Center(
                  child: Text(
                    "Free Mobile App UI Template",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                )
              ],
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
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.backImagesFirst),
          ),
        ),
      ),
    );
  }
}
