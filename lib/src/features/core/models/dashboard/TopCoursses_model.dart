import 'package:flutter/material.dart';
import 'package:student/src/constants/image_strings.dart';

class DashboardTopCoursesModel{
  final String title;
  final String heading;
  final String subHeading;
  final String image;

  DashboardTopCoursesModel(this.title,this.heading,this.subHeading,this.image);

  static List<DashboardTopCoursesModel>list=[
    DashboardTopCoursesModel("Flutter Crash Course","3 Sections","Programming Language",tBannerImage3),
    DashboardTopCoursesModel("HTML/ CSS Crash Course","2 Sections","35 Lessons",tBannerImage2),
    DashboardTopCoursesModel("Material Design Course","6 Sections","Programming & Design",tBannerImage3),
  ];


}