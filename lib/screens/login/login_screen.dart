import 'package:cosmic_app/router/router_names.dart';
import 'package:cosmic_app/style/app_icons.dart';
import 'package:cosmic_app/style/app_images.dart';
import 'package:cosmic_app/style/app_logo.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  void navigateToHome(){
    setState(() {
      Navigator.pushReplacementNamed(context, RouterNames.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.backImagesFirst),
          ),
        ),
        child: Column(
          children: [
            const Expanded(
              child: SizedBox(
                width: 270,
                child: Image(
                  image: AssetImage(AppLogo.logo),
                ),
              ),
            ),
            SizedBox(
              height: 650,
              child: MyCustomBox(
                child: Padding(
                  padding: const EdgeInsets.all(35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          "Sing in",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: SizedBox(
                          height: 55,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xff091522),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  )),
                              hintText: "Enter your email",
                              hintStyle: const TextStyle(
                                color: Colors.white38,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: SizedBox(
                          height: 55,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xff091522),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  )),
                              hintText: "Password",
                              hintStyle: const TextStyle(
                                color: Colors.white38,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Forget Password?",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.greenAccent.withOpacity(0.8),
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: SizedBox(
                          height: 55,
                          width: double.infinity,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Colors.blueAccent,
                                  Colors.blue,
                                  Colors.purpleAccent
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: MaterialButton(
                              onPressed: navigateToHome,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Text(
                                "Sing in",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Divider(
                                height: 0.3,
                                color: Colors.white54,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                "or sing in in using",
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                height: 0.3,
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 80,
                              width: 80,
                              child: MyCustomBox(
                                  borderRadius: 50,
                                  child: Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Image(
                                        image: AssetImage(AppIcons.twitter)),
                                  ))),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: SizedBox(
                                height: 80,
                                width: 80,
                                child: MyCustomBox(
                                    borderRadius: 50,
                                    child: Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Image(
                                          image: AssetImage(AppIcons.facebook)),
                                    ))),
                          ),
                          SizedBox(
                              height: 80,
                              width: 80,
                              child: MyCustomBox(
                                  borderRadius: 50,
                                  child: Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Image(
                                        image: AssetImage(AppIcons.google)),
                                  ))),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don’t have an account?",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                            Text(
                              " SingUp",
                              style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomBox extends StatelessWidget {
  const MyCustomBox({
    super.key,
    required this.child,
    this.borderRadius = 28,
  });

  final Widget child;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0xff091522).withOpacity(0.6),
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          width: 2,
          color: Colors.black.withOpacity(0.3),
        ),
      ),
      child: child,
    );
  }
}
