import 'package:cosmic_app/router/router_names.dart';
import 'package:cosmic_app/screens/home/home_screen.dart';
import 'package:cosmic_app/screens/login/login_screen.dart';
import 'package:cosmic_app/screens/profile/profile_screen.dart';
import 'package:cosmic_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cosmic App",
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        RouterNames.home: (context) => const HomeScreen(),
        RouterNames.login: (context) => const LoginScreen(),
        RouterNames.profile: (context) => const ProfileScreen(),
        RouterNames.inner: (context) => const InnerScreen(),
      },
    );
  }
}