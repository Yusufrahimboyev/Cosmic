import 'package:cosmic_app/screens/home/favorites_screen.dart';
import 'package:cosmic_app/screens/home/info_screen.dart';
import 'package:cosmic_app/style/app_icons.dart';
import 'package:cosmic_app/style/app_images.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomIndex = 0;
  List<Widget> screens = [
    const InfoScreen(),
    FavoritesScreen(),
    FavoritesScreen(),
  ];
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
        child: screens[bottomIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        useLegacyColorScheme: false,
        backgroundColor: const Color(0xff091522),
        selectedLabelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ),
        onTap: (index){
          setState(() {
            bottomIndex = index;
          });
        },
        currentIndex: bottomIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Image(
              width: 30,
              image: AssetImage(AppIcons.globe),
            ),
            activeIcon: Image(
              width: 30,
              image: AssetImage(AppIcons.globeActive),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image(
              width: 30,
              image: AssetImage(AppIcons.like),
            ),
            activeIcon: Image(
              width: 30,
              image: AssetImage(AppIcons.likeActive),
            ),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Image(
              width: 30,
              image: AssetImage(AppIcons.moreIcon),
            ),
            activeIcon: Image(
              width: 30,
              image: AssetImage(AppIcons.moreIcon),
            ),
            label: "More",
          ),
        ],
      ),
    );
  }
}
