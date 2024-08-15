import 'package:cosmic_app/router/router_names.dart';
import 'package:cosmic_app/screens/home/widgets/my_custom_box.dart';
import 'package:cosmic_app/screens/home/widgets/my_gradient.dart';
import 'package:cosmic_app/style/app_icons.dart';
import 'package:cosmic_app/style/app_images.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final List<Map<String, String>> planets = [
    {
      "name": "Mercury",
      "image": AppImages.mercury,
      "text":
          "Mercury is the smallest planet in the Solar System and the closest to the Sun."
    },
    {
      "name": "Venus",
      "image": AppImages.venus,
      "text":
          "Venus is the second planet from the Sun and is Earth's closest planetary neighbor."
    },
    {
      "name": "Earth",
      "image": AppImages.earth,
      "text":
          "Earth is an ellipsoid with a circumference of about 40,000 km. It is the densest planet in the Solar System."
    },
    {
      "name": "Mars",
      "image": AppImages.mars,
      "text":
          "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System."
    },
  ];

  void navigateToMars(){
    setState(() {
      Navigator.pushNamed(context, RouterNames.inner);
    });
  }

  void navigateToProfile(){
    setState(() {
      Navigator.pushNamed(context, RouterNames.profile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      physics: const NeverScrollableScrollPhysics(),
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          scrolledUnderElevation: 0,
          centerTitle: true,
          pinned: true,
          collapsedHeight: 128,
          backgroundColor: const Color(0xff091522).withOpacity(0.4),
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(28),
              bottomLeft: Radius.circular(28),
            ),
            side: BorderSide(
              width: 2,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 18,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox.square(
                  dimension: 55,
                  child: MyCustomBox(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Image(
                        image: AssetImage(AppIcons.menu),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Favorites",
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w700,
                                ),
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
                InkWell(
                  onTap: navigateToProfile,
                  overlayColor: WidgetStateColor.transparent,
                  child: const SizedBox.square(
                    dimension: 55,
                    child: MyCustomBox(
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Image(
                          image: AssetImage(AppIcons.profile),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 16),
        separatorBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: MyCustomBox(
            child: Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Stack(
                          children: [
                            Image(
                              width: 70,
                              image: AssetImage(
                                  planets.elementAt(index)["image"]!),
                            ),
                            const MyGradient(
                              dimension: 70,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              planets.elementAt(index)["name"]!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color: const Color(0xff11dce8),
                                      fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              planets.elementAt(index)["text"]!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 130),
                                TextButton(
                                  style: const ButtonStyle(
                                    overlayColor: WidgetStateColor.transparent,
                                    padding:
                                        WidgetStatePropertyAll(EdgeInsets.zero),
                                  ),
                                  onPressed: navigateToMars,
                                  child: Row(
                                    children: [
                                      Text(
                                        "Details",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Image(
                                        width: 25,
                                        image:
                                            AssetImage(AppIcons.arrowForward),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: TextButton(
                    style: const ButtonStyle(
                      overlayColor: WidgetStateColor.transparent,
                      padding: WidgetStatePropertyAll(EdgeInsets.zero),
                      shape: WidgetStatePropertyAll(CircleBorder()),
                    ),
                    onPressed: () {},
                    child: const Image(
                      width: 25,
                      image: AssetImage(AppIcons.like),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        itemCount: planets.length + 1,
      ),
    );
  }
}
