import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vrportfolio/pages/page1.dart';
import 'package:vrportfolio/pages/page2.dart';
import 'package:vrportfolio/pages/page3.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  int pageIndex = 0;

  var pages = [
    const Page1(),
    const Page2(),
    const Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    var standardHeight = MediaQuery.of(context).size.height;
    var standardWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
          children: [
            Stack(
                children: [
                  pages[pageIndex],
                ]
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: standardHeight * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(standardHeight * 0.02),
                    topRight: Radius.circular(standardHeight * 0.02),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      enableFeedback: false,
                      onPressed: (){
                        setState(() {
                          pageIndex = 0;
                        });
                      },
                      icon: Icon(
                        Icons.person,
                        color: pageIndex == 0 ? Colors.black : Color(0xFFb1b1b2),
                      ),
                    ),
                    IconButton(
                      enableFeedback: false,
                      onPressed: (){
                        setState(() {
                          pageIndex = 1;
                        });
                      },
                      icon: Icon(
                        Icons.wallet,
                        color: pageIndex == 1 ? Colors.black : Color(0xFFb1b1b2),
                      ),
                    ),
                    IconButton(
                      enableFeedback: false,
                      onPressed: (){
                        setState(() {
                          pageIndex = 2;
                        });
                      },
                      icon: Icon(
                        Icons.menu,
                        color: pageIndex == 2 ? Colors.black : Color(0xFFb1b1b2),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]
      ),
    );
  }
}
