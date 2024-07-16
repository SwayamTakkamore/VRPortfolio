import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vrportfolio/pages/views/android.dart';
import 'package:vrportfolio/pages/views/web.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isDark = false;

  void toggleTheme(bool value) {
    setState(() {
      isDark = value;
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness:
        isDark ? Brightness.light : Brightness.dark,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < 600) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: isDark ? darkTheme : lightTheme,
        home: AndroidPage(toggleTheme: toggleTheme, isDark: isDark,),
      );
    }
    else {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: isDark ? darkTheme : lightTheme,
        home: WebPage(toggleTheme: toggleTheme, isDark: isDark,),
      );
    }
  }
}

final ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: Colors.black,
    primary: const Color(0xff1a1a1a),
    secondary: Colors.white,
    onSecondary: Colors.black,
    tertiary: const Color(0xff121212),
    onTertiary: const Color(0xff121212),
  ),
  scaffoldBackgroundColor: Colors.transparent,
);

final ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: Colors.white,
    primary: const Color(0xfff2f2f2),
    secondary: Colors.black,
    onSecondary: Colors.white,
    tertiary: const Color(0xff000000),
    onTertiary: const Color(0xffffffff),
  ),
  scaffoldBackgroundColor: Colors.transparent,
);

class ScaffoldGradientBackground extends StatelessWidget {
  final Widget child;
  final bool isDark;

  const ScaffoldGradientBackground(
    {super.key, required this.child, required this.isDark});

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      color: isDark ? const Color(0xff070707) : const Color(0xfff2f2f2),
    ),
    child: child,
    );
  }
}
