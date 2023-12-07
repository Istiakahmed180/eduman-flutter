import 'package:eduman_flutter/src/pages/course/course_wrapper/course_card_list.dart';
import 'package:eduman_flutter/src/pages/course/course_wrapper/course_categories_slider.dart';
import 'package:eduman_flutter/src/pages/course/course_wrapper/course_header.dart';
import 'package:eduman_flutter/src/pages/course/course_wrapper/course_hero.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:eduman_flutter/src/widgets/search_field/search_field.dart';
import 'package:flutter/material.dart';

class CourseWrapper extends StatelessWidget {
  const CourseWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      padding: const EdgeInsets.only(left: 16, right: 16),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            background_linear_gradient_1,
            background_linear_gradient_2
          ])),
      child: ListView(
        children: const [
          // * Course Header Section
          CourseHeader(),
          // * Course Search Field Section
          SearchField(),
          // * Course Hero Section
          CourseHero(),
          // * Course Categories Slider Section
          CourseCategoriesSlider(),
          // * Course Card List Section
          CourseCardList()
        ],
      ),
    );
  }
}
