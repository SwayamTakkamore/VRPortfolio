import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photo_view/photo_view.dart';
import '../../mainpage.dart';
import 'tile1.dart';


class Page2 extends StatefulWidget {
  final Function(bool) toggleTheme;
  final bool isDark;

  const Page2({super.key, required this.toggleTheme, required this.isDark});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  late bool switchValue;
  List<tile1> tiles1 = [];

  void getData(){
    tiles1 = tile1.getDetails();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    getData();
    var standardHeight = MediaQuery.of(context).size.height;
    var standardWidth = MediaQuery.of(context).size.width;
    switchValue = widget.isDark;

    return ScaffoldGradientBackground(
      isDark: switchValue,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 90),
            child: ListView.separated(

              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Container(
                    height: 260,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onSecondary,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: GestureDetector(
                        onLongPress: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                alignment: Alignment.center,
                                child: PhotoView(
                                  tightMode: true,
                                  basePosition: Alignment.center,
                                  minScale: PhotoViewComputedScale.contained,
                                  maxScale: PhotoViewComputedScale.contained,
                                  backgroundDecoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  imageProvider: AssetImage(tiles1[index].certificatepath),
                                ),
                              );
                            },
                          );
                        },
                        child: Image.asset(
                          tiles1[index].certificatepath,
                        ),
                      ),
                    ),
                  ),
                );
              },

              separatorBuilder: (context, index) {
                return const SizedBox(height: 0);
              },

              itemCount: tiles1.length,
            ),
          ),
        ),
      ),
    );
  }
}
