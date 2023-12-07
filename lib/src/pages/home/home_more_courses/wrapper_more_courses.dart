import 'package:eduman_flutter/src/pages/home/home_more_courses/more_courses_card.dart';
import 'package:eduman_flutter/src/pages/home/home_more_courses/more_courses_header.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';

class WrapperMoreCourses extends StatelessWidget {
  const WrapperMoreCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            background_linear_gradient_1,
            background_linear_gradient_2
          ])),
      child: ListView(children: const [
        // * More Courses Header Section
        MoreCoursesHeader(),
        // * More Courses Card Section
        MoreCoursesCard()
      ]),
    )));
  }
}
