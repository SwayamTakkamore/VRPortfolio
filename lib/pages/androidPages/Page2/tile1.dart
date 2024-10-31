import 'package:flutter/material.dart';

class tile1{

  String certificatepath;

  tile1(
    {
      required this.certificatepath,
    }
  );

  static List<tile1> getDetails() {
    List<tile1> details = [];

    details.add(
      tile1(
        certificatepath: 'assets/certificates/python basic certificate.jpg',
      ),
    );
    details.add(
      tile1(
        certificatepath: 'assets/certificates/problem solving basic certificate.jpg',
      ),
    );
    details.add(
      tile1(
        certificatepath: 'assets/certificates/Nasa Hackathon Certificate.jpg',
      ),
    );
    details.add(
      tile1(
        certificatepath: 'assets/certificates/Accenture Developer Job Simulation Certificate.jpg',
      ),
    );
    details.add(
      tile1(
        certificatepath: 'assets/certificates/Technex-24 Hackathon Certificate.png',
      ),
    );
    return details;
  }
}