import 'package:eduman_flutter/src/pages/home/home_popular_courses/popular_courses_card.dart';
import 'package:eduman_flutter/src/pages/home/home_popular_courses/popular_courses_header_screen.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';

class PopularCoursesScreen extends StatelessWidget {
  const PopularCoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
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
                // * Popular Courses Header Section
                PopularCoursesHeaderScreen(),
                // * Popular Courses Card Section
                PopularCoursesCard()
              ],
            )),
      ),
    );
  }
}
