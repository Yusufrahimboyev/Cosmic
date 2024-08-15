import 'package:cosmic_app/screens/profile/widgets.dart';
import 'package:cosmic_app/style/app_icons.dart';
import 'package:cosmic_app/style/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _switc = true;
  bool _cek1 = true;
  bool _cek2 = true;

  @override
  Widget build(BuildContext context) {
    double he = MediaQuery.of(context).size.height;
    double we = MediaQuery.of(context).size.width;
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.backImagesFirst),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: NestedScrollView(
            physics: const NeverScrollableScrollPhysics(),
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                pinned: true,
                leadingWidth: 80,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: MyBlurWidget(
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(AppIcons.arrowBack),
                    ),
                  ),
                ),
                backgroundColor: Colors.black.withOpacity(0.3),
                title: const Text("My Profile"),
                titleTextStyle: const TextStyle(color: Colors.white, fontSize: 32),
                centerTitle: true,
                expandedHeight: 100,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                  side: BorderSide(
                    width: 2,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ],
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, ),
              child: ListView(
                children: [
                  MyBlurWidget(
                    child: SizedBox(
                      height: he * 0.14,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 5),
                            child: CircleAvatar(
                              radius: 40,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 25),
                            child: Column(
                              children: [
                                Text(
                                  "Arthur Dent",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "Space adventurer",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 32,
                                  child: Image(
                                    image: AssetImage(
                                      AppIcons.edit,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: MyBlurWidget(
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CupertinoSwitch(
                                activeColor: const Color(0xff11DCE8),
                                thumbColor: const Color(0xff0D1F29),
                                trackColor: Colors.grey,
                                value: _switc,
                                onChanged: (value) {
                                  setState(() {
                                    _switc = value;
                                  });
                                },
                              ),
                              Stack(
                                children: [
                                  SizedBox(
                                    height: he * 0.4,
                                    width: we * 0.8,
                                    child: const CircularProgressIndicator(
                                      value: 0.8,
                                      strokeWidth: 20,
                                      strokeCap: StrokeCap.round,
                                      backgroundColor: Color(0xff0D1F29),
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.lightBlueAccent,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(height: 40,),
                                      Padding(
                                        padding: EdgeInsets.symmetric(

                                          horizontal: we * 0.24,
                                        ),
                                        child: const Text(
                                          "Personal Progress",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                          maxLines: 2,
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          "87.1%",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff859AF4),
                                              fontSize: 96),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: _cek1,
                                    onChanged: (value) {
                                      setState(() {
                                        _cek1 = value!;
                                      });
                                    },
                                  ),
                                  const Text(
                                    "Show me in Planet Rating",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: _cek2,
                                    onChanged: (value) {
                                      setState(() {
                                        _cek2 = value!;
                                      });
                                    },
                                  ),
                                  const Text(
                                    "Notifications",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
