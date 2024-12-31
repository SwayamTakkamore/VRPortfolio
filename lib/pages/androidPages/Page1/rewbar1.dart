import 'package:flutter/material.dart';
import 'package:vrportfolio/pages/androidPages/Page2/tile1.dart';

class rewbar1{

  String event_name;
  String prize;
  String event_details;
  String image;

  rewbar1(
    {
      required this.event_name,
      required this.prize,
      required this.event_details,
      required this.image
    }
  );

  static List<rewbar1> getrew1(){
    List<rewbar1> details = [];

    details.add(
      rewbar1(
        event_name: "Media Graphics Designer",
        prize: "IGNITE CSBS",
        event_details: "Aug 2024 - Present",
        image: "assets/images/IGNITE CSBS.png"
      )
    );
    return details;
  }
}