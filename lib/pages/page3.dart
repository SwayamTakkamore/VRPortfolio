import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class Page3 extends StatefulWidget {

  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {

  bool switchValue = false;

  @override
  Widget build(BuildContext context) {

    var standardHeight = MediaQuery.of(context).size.height;
    var standardWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      Color(0xfff2f2f2)
                    ]
                )
            ),
          ),
          Padding(
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
                Switch(
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                      if (kDebugMode) {
                        print("Theme : $switchValue");
                      }
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

