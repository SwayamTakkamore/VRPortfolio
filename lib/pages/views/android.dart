import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:vrportfolio/pages/androidPages/page1.dart';
import 'package:vrportfolio/pages/androidPages/page2.dart';
import 'package:vrportfolio/pages/androidPages/page3.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vrportfolio/firebase_options.dart';

class AndroidPage extends StatefulWidget {
  final Function(bool) toggleTheme;
  final bool isDark;

  const AndroidPage({super.key, required this.toggleTheme, required this.isDark});

  @override
  State<AndroidPage> createState() => _AndroidPageState();
}

class _AndroidPageState extends State<AndroidPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var standardHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: pageIndex,
            children: [
              Page1(toggleTheme: widget.toggleTheme, isDark: widget.isDark),
              Page2(toggleTheme: widget.toggleTheme, isDark: widget.isDark),
              Page3(toggleTheme: widget.toggleTheme, isDark: widget.isDark),
            ],
          ),
          buildAlign(standardHeight),
        ],
      ),
    );
  }

  Align buildAlign(double standardHeight) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: standardHeight * 0.08,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSecondary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  overlayColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                child: SvgPicture.asset(
                  'assets/svg/feather/user.svg',
                  color: pageIndex == 0
                      ? Theme.of(context).colorScheme.secondary
                      : const Color(0xff808080),
                )
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  overlayColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                child: SvgPicture.asset(
                  'assets/svg/feather/credit-card.svg',
                  color: pageIndex == 1
                      ? Theme.of(context).colorScheme.secondary
                      : const Color(0xff808080),
                )
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  overlayColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                child: SvgPicture.asset(
                  'assets/svg/feather/menu.svg',
                  color: pageIndex == 2
                      ? Theme.of(context).colorScheme.secondary
                      : const Color(0xff808080),
                )
            ),
          ],
        ),
      ),
    );
  }
}