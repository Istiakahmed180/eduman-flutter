import 'package:eduman_flutter/src/model/top_categories_model.dart';
import 'package:eduman_flutter/src/pages/home/home_top_categories/category_courses_card.dart';
import 'package:eduman_flutter/src/pages/home/home_top_categories/category_courses_header.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';

class CategoryCourses extends StatelessWidget {
  final TopCategoriesContent courses;

  const CategoryCourses({Key? key, required this.courses}) : super(key: key);

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
          child: Column(
            children: [
              // * Category Courses Header Seciton
              CategoryCoursesHeader(
                category: courses,
              ),
              // * Category Courses Card Section

              CategoryCoursesCard(category: courses)
            ],
          ),
        ),
      ),
    );
  }
}
