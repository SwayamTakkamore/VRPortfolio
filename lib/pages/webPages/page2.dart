import 'package:flutter/material.dart';
import '../mainpage.dart';


class Page2 extends StatefulWidget {
  final Function(bool) toggleTheme;
  final bool isDark;

  const Page2({super.key, required this.toggleTheme, required this.isDark});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  late bool switchValue;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var standardHeight = MediaQuery.of(context).size.height;
    var standardWidth = MediaQuery.of(context).size.width;
    switchValue = widget.isDark;

    return ScaffoldGradientBackground(
      isDark: switchValue,
      child: const Scaffold(
        body: Stack(
          children: [

          ],
        ),
      ),
    );
  }
}
