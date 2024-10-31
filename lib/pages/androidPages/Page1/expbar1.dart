import 'package:flutter/material.dart';
import 'package:vrportfolio/pages/androidPages/Page2/tile1.dart';

class expbar1{

  String post;
  String place;
  String timeline;

  expbar1(
    {
      required this.post,
      required this.place,
      required this.timeline
    }
  );

  static List<expbar1> getexp1(){
    List<expbar1> details = [];
    
    details.add(
      expbar1(
        post: "Media Graphics Designer",
        place: "IGNITE CSBS",
        timeline: "Aug 2024 - Present")
    );
    details.add(
      expbar1(
        post: "Contributor",
        place: "GirlScript Summer of Code",
        timeline: "May - Sept 2024")
    );
    details.add(
      expbar1(
        post: "Video & Animated Graphics Designer",
        place: "Commenzy",
        timeline: "Apr - Aug 2024")
    );
    return details;
  }
}