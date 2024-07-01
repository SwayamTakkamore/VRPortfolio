import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';




class GetStarted extends StatelessWidget {
  const GetStarted({super.key});


  @override
  Widget build(BuildContext context) {

    var standardHeight = MediaQuery.of(context).size.height;
    var standardWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff100c0c),
                  Color(0xff1b2826),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  height: standardHeight * 0.2,
                  width: standardWidth * 0.6,
                  decoration: BoxDecoration(
                    color: const Color(0xff1b2826).withOpacity(0.5),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(right: standardWidth * 0.3),
            child: const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "VR",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Portfolio",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: standardHeight * 0.02),
              child: Container(
                height: standardHeight * 0.13,
                width: standardWidth * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xff1a2929),
                      Color(0xff192526),
                    ],
                  ),
                ),
                child: ElevatedButton(
                    onPressed: (){
                      if (kDebugMode) {
                        print("Get Started Pressed");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    child:
                      const Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}