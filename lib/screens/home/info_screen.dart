import 'package:cosmic_app/router/router_names.dart';
import 'package:cosmic_app/screens/home/widgets/my_custom_box.dart';
import 'package:cosmic_app/screens/home/widgets/my_gradient.dart';
import 'package:cosmic_app/style/app_icons.dart';
import 'package:cosmic_app/style/app_images.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  Map<String, String> planets = {
    "mercury": AppImages.mercury,
    "venus": AppImages.venus,
    "earth": AppImages.earth,
    "mars": AppImages.mars,
  };

  void navigateToMars(){
    setState(() {
      Navigator.pushNamed(context, RouterNames.inner);
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
                        "Milky Way",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: const Color(0xff8D8E99)),
                      ),
                      Text(
                        "Solar System",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
                const SizedBox.square(
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
              ],
            ),
          ),
        ),
      ],
      body: ListView(
        children: [
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) =>
              const SizedBox(width: 12),
              separatorBuilder: (BuildContext context, int index) =>
                  MyCustomBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 12,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Stack(
                              children: [
                                Image(
                                  width: 24,
                                  image: AssetImage(
                                    planets.values.elementAt(index),
                                  ),
                                ),
                                const MyGradient(),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            planets.keys.elementAt(index),
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
              itemCount: 5,
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: MyCustomBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 21,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Planet of the day",
                      style:
                      Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: const Stack(
                            children: [
                              Image(
                                width: 70,
                                image: AssetImage(AppImages.mars),
                              ),
                              MyGradient(
                                dimension: 70,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mars",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff11DCE8),
                              ),
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: 200,
                              child: Text(
                                "Mars is the fourth planet from the"
                                    " Sun and the second-smallest planet"
                                    " in the Solar System, only being larger"
                                    " than Mercury. In the English"
                                    " language, Mars is named for the"
                                    " Roman god of war.",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                  color: Colors.white,
                                ),
                                maxLines: 7,
                              ),
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 130),
                                TextButton(
                                  style: const ButtonStyle(
                                      overlayColor:
                                      WidgetStateColor.transparent,
                                      padding: WidgetStatePropertyAll(
                                          EdgeInsets.zero)),
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
                                        image: AssetImage(
                                            AppIcons.arrowForward),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 26),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: MyCustomBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 21,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Solar System", style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),),
                    const SizedBox(height: 15),
                    Text(
                      "The Solar System[c] is the gravitationally "
                          "bound system of the Sun and the objects "
                          "that orbit it. It formed 4.6 billion years"
                          " ago from the gravitational collapse of a "
                          "giant interstellar molecular cloud. The vast"
                          " majority (99.86%) of the system's mass is in "
                          "the Sun, with most of the remaining mass "
                          "contained in the planet Jupiter. The four inner "
                          "system planets- Mercury, Venus, Earth and Mars "
                          "-are terrestrial planets, being composed primarily"
                          " of rock and metal. The four giant planets of the "
                          "outer system are substantially larger and more massive "
                          "than the terrestrials.",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
