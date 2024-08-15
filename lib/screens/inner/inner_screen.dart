import 'package:cosmic_app/screens/inner/widgets/custom_box.dart';
import 'package:cosmic_app/screens/inner/widgets/filled_button.dart';
import 'package:cosmic_app/screens/inner/widgets/info_box.dart';
import 'package:cosmic_app/style/app_icons.dart';
import 'package:cosmic_app/style/app_images.dart';
import 'package:flutter/material.dart';

class InnerScreen extends StatefulWidget {
  const InnerScreen({super.key});

  @override
  State<InnerScreen> createState() => _InnerScreenState();
}

class _InnerScreenState extends State<InnerScreen> {

  void back(){
    setState(() {
      Navigator.maybePop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox.expand(
          child: Image(
            image: AssetImage(AppImages.backImagesSecond),
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox.expand(
          child: DecoratedBox(
            decoration: BoxDecoration(
              backgroundBlendMode: BlendMode.color,
              gradient: LinearGradient(
                colors: [
                  Color(0xFF00E5E5),
                  Color(0xFF72A5F2),
                  Color(0xFFE961FF),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.0, 0.51, 1.0],
              ),
            ),
          ),
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              toolbarHeight: 90,
              backgroundColor: Colors.transparent,
              leadingWidth: 77,
              leading: Padding(
                padding: const EdgeInsets.all(3),
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    CustomBox(
                      child: IconButton(
                        onPressed: back,
                        icon: const ImageIcon(
                          AssetImage(AppIcons.arrowBack),
                          size: 27,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                Row(
                  children: [
                    CustomBox(
                      child: IconButton(
                        onPressed: () {},
                        icon: const ImageIcon(
                          AssetImage(AppIcons.like),
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ],
            ),
            body: Stack(
              children: [
                Column(
                  children: [
                    const Expanded(child: SizedBox()),
                    CustomBox(
                      opacity: 0.3,
                      radius: const BorderRadius.vertical(
                        top: Radius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          children: [
                            const SizedBox(height: 85),
                            Center(
                              child: Text(
                                "Earth",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium
                                    ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    MyInfoBox(
                                      icon: AppIcons.user,
                                      title: "Mass\n",
                                      subtitle: TextSpan(
                                        children: [
                                          const TextSpan(text: '(10'),
                                          WidgetSpan(
                                            child: Transform.translate(
                                              offset: const Offset(2, -10),
                                              child: Text(
                                                '24',
                                                textScaler:
                                                    const TextScaler.linear(
                                                        0.8),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium
                                                    ?.copyWith(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          const TextSpan(text: ' kg)'),
                                        ],
                                      ),
                                      text: "5.97",
                                    ),
                                    const SizedBox(height: 32),
                                    const MyInfoBox(
                                      icon: AppIcons.rocket,
                                      title: "Esc. Velocity\n",
                                      subtitle: TextSpan(
                                        children: [
                                          TextSpan(text: '(km/s)'),
                                        ],
                                      ),
                                      text: "11.2",
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      MyInfoBox(
                                        icon: AppIcons.magnetic,
                                        title: "Gravity\n",
                                        subtitle: TextSpan(
                                          children: [
                                            const TextSpan(text: '(m/s'),
                                            WidgetSpan(
                                              child: Transform.translate(
                                                offset: const Offset(2, -10),
                                                child: Text(
                                                  '2',
                                                  textScaler:
                                                      const TextScaler.linear(
                                                          0.8),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleMedium
                                                      ?.copyWith(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            const TextSpan(text: ' )'),
                                          ],
                                        ),
                                        text: "9.8",
                                      ),
                                      const SizedBox(height: 32),
                                      const MyInfoBox(
                                        icon: AppIcons.temperature,
                                        title: "Mean\n",
                                        subtitle: TextSpan(
                                          children: [
                                            TextSpan(text: '(C)'),
                                          ],
                                        ),
                                        text: "15",
                                      ),
                                    ],
                                  ),
                                ),
                                const Column(
                                  children: [
                                    MyInfoBox(
                                      icon: AppIcons.sun,
                                      title: "Day\n",
                                      subtitle: TextSpan(
                                        children: [
                                          TextSpan(text: '(hours)'),
                                        ],
                                      ),
                                      text: "24",
                                    ),
                                    SizedBox(height: 32),
                                    MyInfoBox(
                                      icon: AppIcons.ruler,
                                      title: "Distance from\n Sun (106 km)",
                                      subtitle: TextSpan(),
                                      text: "5.97",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 40),
                            MyFilledButton(
                              onPressed: () {},
                            ),
                            const SizedBox(height: 55),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Column(
                  children: [
                    Expanded(child: SizedBox()),
                    Center(
                      child: SizedBox(
                        height: 140,
                        width: 140,
                        child: Stack(
                          children: [
                            SizedBox(
                              child: Image(
                                image: AssetImage(AppImages.earth),
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox.expand(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  backgroundBlendMode: BlendMode.color,
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF00E5E5),
                                      Color(0xFF72A5F2),
                                      Color(0xFFE961FF),
                                    ],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    stops: [0.0, 0.51, 1.0],
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(70),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 590),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
