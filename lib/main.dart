import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vrportfolio/pages/mainpage.dart';
import 'package:vrportfolio/pages/androidPages/Page1/page1.dart';
import 'package:vrportfolio/pages/androidPages/Page2/page2.dart';
import 'package:vrportfolio/pages/androidPages/Page3/page3.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vrportfolio/firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}


