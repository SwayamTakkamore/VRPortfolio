import 'package:flutter/material.dart';
import '../../mainpage.dart';



class Page3 extends StatefulWidget {
  final Function(bool) toggleTheme;
  final bool isDark;

  const Page3({super.key, required this.toggleTheme, required this.isDark});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  late bool switchValue;

  @override
  void initState() {
    super.initState();
    switchValue = widget.isDark;
  }

  @override
  Widget build(BuildContext context) {
    var standardHeight = MediaQuery.of(context).size.height;
    var standardWidth = MediaQuery.of(context).size.width;

    return ScaffoldGradientBackground(
      isDark: switchValue,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: standardHeight * 0.15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Appearance  :',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: standardWidth * 0.20),
              Container(
                height: standardHeight * 0.05,
                width: standardWidth * 0.17,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(standardHeight * 0.10),
                ),
                child: Switch(
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                      widget.toggleTheme(switchValue);
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
