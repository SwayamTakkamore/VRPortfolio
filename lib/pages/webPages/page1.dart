import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vrportfolio/firebase_options.dart';
import '../mainpage.dart';


class Page1 extends StatefulWidget {
  final Function(bool) toggleTheme;
  final bool isDark;

  const Page1({super.key, required this.toggleTheme, required this.isDark});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  late bool switchValue;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var standardHeight = MediaQuery.of(context).size.height;
    var standardWidth = MediaQuery.of(context).size.width;
    var personAge = 18;
    switchValue = widget.isDark;

    return ScaffoldGradientBackground(
      isDark: switchValue,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: standardHeight * 0.15,),
              child: Column(
                children: [
                  Transform.scale(
                    scale: standardHeight * 0.00115,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onLongPress: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  child: Stack(children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          standardHeight * 0.02),
                                      child: Image.asset(
                                        'assets/pfp/pfp.jpg',
                                        height: standardHeight * 0.5, // Adjust as needed
                                        width: standardHeight * 0.5, // Adjust as needed
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ]),
                                );
                              });
                          },
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius:
                                BorderRadius.circular(standardHeight * 0.02),
                                child: Transform.scale(
                                  scale: 2.4,
                                  child: Transform.translate(
                                    offset: Offset(standardWidth * 0.004, standardHeight * 0.012),
                                    child: Image.asset(
                                      'assets/pfp/pfp.jpg',
                                      height: standardHeight * 0.10,
                                      width: standardHeight * 0.10,
                                      fit: BoxFit.cover,
                                      errorBuilder: (context, error, stackTrace) {
                                        return const Icon(Icons.error);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Swayam Takkamore',
                              style: TextStyle(
                                fontSize: standardHeight * 0.026,
                                fontWeight: FontWeight.w800,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                'CSBS 2nd Year Student',
                                style: TextStyle(
                                  fontSize: standardHeight * 0.02,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/svg/feather/map-pin.svg',
                                    color: const Color(0xff808080),
                                    width: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 1.5),
                                    child: Text(
                                      'Nagpur, INDIA',
                                      style: TextStyle(
                                        fontSize: standardHeight * 0.02,
                                        color: const Color(0xff808080),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: standardHeight * 0.04),
                  Transform.scale(
                    scale: standardHeight * 0.00115,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 312,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.w500,
                              ),
                              children: [
                                const TextSpan(
                                  text: "Hey, I'm Swayam Takkamore. I'm a ",
                                ),
                                TextSpan(
                                  text: (
                                    "$personAge "
                                  ),
                                  style: const TextStyle(
                                    color: Color(0xff32d8fb),
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Dialog(
                                            alignment: Alignment.center,
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: standardHeight * 0.1,
                                              width: standardWidth * 0.1,
                                              child: Padding(
                                                padding: const EdgeInsets.only(bottom: 10),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                        "Born on",
                                                      style: TextStyle(
                                                        color: Color(0xff808080),
                                                      ),
                                                    ),
                                                    Text(
                                                      "26 August 2005",
                                                      style: TextStyle(
                                                        fontSize: standardHeight * 0.03,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          );
                                        },
                                      );
                                    },
                                ),
                                const TextSpan(
                                  text: "year old \nB.Tech 2nd year "
                                ),
                                const TextSpan(
                                  text: (
                                      "CSBS "
                                  ),
                                  style: TextStyle(
                                    color: Color(0xffc900ff),
                                  ),
                                ),
                                const TextSpan(
                                    text: "student. I'm a Flutter \nDeveloper, NextJS Developer, and a Video & \nAnimated Graphics Designer."
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ),
                  ),
                  SizedBox(height: standardHeight * 0.04),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 312,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Skills",
                            style: TextStyle(
                              fontSize: standardHeight * 0.022,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: standardHeight * 0.04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: standardHeight * 0.10,
                            width: standardHeight * 0.10,
                            decoration: buildBoxDecoration(standardHeight, context),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: standardHeight * 0.01),
                                SvgPicture.asset(
                                  'assets/svg/raw/flutter.svg',
                                  width: 27.5,
                                ),
                                SizedBox(height: standardHeight * 0.01),
                                Text(
                                  'Flutter',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                    fontSize: standardHeight * 0.015,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: standardWidth * 0.035),
                          Container(
                            height: standardHeight * 0.10,
                            width: standardHeight * 0.10,
                            decoration: buildBoxDecoration(standardHeight, context),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: standardHeight * 0.01),
                                SvgPicture.asset(
                                  'assets/svg/raw/dart.svg',
                                  width: 27.5,
                                ),
                                SizedBox(height: standardHeight * 0.01),
                                Text(
                                  'Dart',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                    fontSize: standardHeight * 0.015,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: standardWidth * 0.035),
                          Container(
                            height: standardHeight * 0.10,
                            width: standardHeight * 0.10,
                            decoration: buildBoxDecoration(standardHeight, context),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: standardHeight * 0.01),
                                SvgPicture.asset(
                                  'assets/svg/raw/nextjs.svg',
                                  width: 27.5,
                                ),
                                SizedBox(height: standardHeight * 0.01),
                                Text(
                                  'NextJS',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                    fontSize: standardHeight * 0.015,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: standardWidth * 0.035),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: standardHeight * 0.10,
                            width: standardHeight * 0.10,
                            decoration: buildBoxDecoration(standardHeight, context),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: standardHeight * 0.01),
                                SvgPicture.asset(
                                  'assets/svg/raw/cpp.svg',
                                  width: 27.5,
                                ),
                                SizedBox(height: standardHeight * 0.01),
                                Text(
                                  'C++',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                    fontSize: standardHeight * 0.015,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: standardWidth * 0.035),
                          Container(
                            height: standardHeight * 0.10,
                            width: standardHeight * 0.10,
                            decoration: buildBoxDecoration(standardHeight, context),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: standardHeight * 0.01),
                                SvgPicture.asset(
                                  'assets/svg/raw/python.svg',
                                  width: 27.5,
                                ),
                                SizedBox(height: standardHeight * 0.01),
                                Text(
                                  'Python',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                    fontSize: standardHeight * 0.015,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: standardWidth * 0.035),
                          Container(
                            height: standardHeight * 0.10,
                            width: standardHeight * 0.10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(standardHeight * 0.02),
                              ),
                              color: Colors.transparent,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.transparent,
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: standardHeight * 0.01),
                                SvgPicture.asset(
                                  'assets/svg/raw/premiere-pro.svg',
                                  color: Colors.transparent,
                                  width: 27.5,
                                ),
                                SizedBox(height: standardHeight * 0.01),
                                Text(
                                  '',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                    fontSize: standardHeight * 0.015,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: standardHeight * 0.04),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: standardWidth * 0.11),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Experience",
                            style: TextStyle(
                              fontSize: standardHeight * 0.022,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: standardHeight * 0.04),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: standardWidth * 0.20,),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Dot(),
                                      SizedBox(width: standardWidth * 0.1),
                                      const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Contributor",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                            )
                                          ),
                                          Text(
                                              "GirlScript Summer of Code",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                              "May 2024 - Present",
                                            style: TextStyle(
                                              color: const Color(0xff808080),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Line(),
                                  Row(
                                    children: [
                                      const Dot(),
                                      SizedBox(width: standardWidth * 0.1),
                                      const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              "Video & Animated Graphics Designer",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                              "Commenzy",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                            )
                                          ),
                                          Text(
                                              "Apr 2024 - Present",
                                            style: TextStyle(
                                              color: Color(0xff808080),
                                            )
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: standardHeight * 0.04),
                      SizedBox(height: standardHeight * 0.1),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // BoxDecoration for the skill containers
  BoxDecoration buildBoxDecoration(double standardHeight, BuildContext context) {
    return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(standardHeight * 0.02),
      ),
      color: Theme.of(context).colorScheme.onTertiary,
      boxShadow: [
        BoxShadow(
          color: Theme.of(context).colorScheme.tertiary.withOpacity(0.1),
          blurRadius: 5,
          spreadRadius: 1,
        ),
      ],
    );
  }
}

class Dot extends StatelessWidget {
  const Dot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: 5
      ),
      height: 5,
      width: 5,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        shape: BoxShape.circle,
      ),
    );
  }
}

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 1.75),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            width: 1,
            height: 80,
            color: Color(0xff808080),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

