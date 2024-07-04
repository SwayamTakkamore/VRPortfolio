import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});


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
          SingleChildScrollView(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: standardHeight * 0.15),
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
                                        standardHeight * 0.02
                                    ),
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
                          Container(
                            height: standardHeight * 0.10,
                            width: standardHeight * 0.10,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.circular(standardHeight * 0.02),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.8),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                          ),
                          ClipRRect(
                            borderRadius:
                            BorderRadius.circular(standardHeight * 0.02),
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
                        ],
                      ),
                    ),
                    SizedBox(width: standardWidth * 0.05),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Swayam Takkamore',
                          style: TextStyle(
                              fontSize: standardHeight * 0.026,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: standardHeight * 0.003),
                          child: Text(
                            'CSBS 2nd Year Student',
                            style: TextStyle(
                                fontSize: standardHeight * 0.02,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: standardHeight * 0.003),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: standardHeight * 0.02,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding:
                                EdgeInsets.only(left: standardWidth * 0.01),
                                child: Text(
                                  'Nagpur, INDIA',
                                  style: TextStyle(
                                      fontSize: standardHeight * 0.02,
                                      color: Colors.grey),
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
            ),
          ),
        ],
      ),
    );
  }
}
