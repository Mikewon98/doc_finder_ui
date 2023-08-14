import 'package:awesome_doctor_ui/model/doctor.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../model/catagory.dart';

class Data {
  static final catagoriesList = [
    Catagory(
      title: "Cardiologist",
      doctorsNumber: 15,
      icon: Icons.favorite,
    ),
    Catagory(
      title: "Pediatric",
      doctorsNumber: 8,
      icon: LineIcons.child,
    ),
    Catagory(
      title: "Dermatologist",
      doctorsNumber: 7,
      icon: Icons.line_style,
    ),
    Catagory(
      title: "Optamologist",
      doctorsNumber: 10,
      icon: LineIcons.eye,
    ),
  ];

  static final doctorsList = [
    Doctor(
      name: "Dr. George",
      speciality: "Cardiologist",
      image: "images/doctor_3.png",
      reviews: 19,
      reviewScore: 3,
    ),
    Doctor(
      name: "Dr. Selam",
      speciality: "Pediatric",
      image: "images/doctor_2.png",
      reviews: 67,
      reviewScore: 5,
    ),
    Doctor(
      name: "Dr. Dani",
      speciality: "Dermatologist",
      image: "images/doctor_3.png",
      reviews: 19,
      reviewScore: 3,
    ),
    Doctor(
      name: "Dr. Michael",
      speciality: "Optamologist",
      image: "images/doctor_1.png",
      reviews: 80,
      reviewScore: 4,
    ),
  ];
}
