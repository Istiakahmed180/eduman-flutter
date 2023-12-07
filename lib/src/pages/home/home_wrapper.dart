import 'package:eduman_flutter/src/pages/home/home_more_courses/home_more_courses.dart';
import 'package:eduman_flutter/src/pages/home/home_popular_courses/home_popular_courses.dart';
import 'package:eduman_flutter/src/pages/home/home_popular_mentor/home_popular_mentor.dart';
import 'package:eduman_flutter/src/pages/home/home_top_categories/top_categories.dart';
import 'package:eduman_flutter/src/pages/home/home_wrapper_page/home_carousel_slider.dart';
import 'package:eduman_flutter/src/pages/home/home_wrapper_page/home_header.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:eduman_flutter/src/widgets/search_field/search_field.dart';
import 'package:flutter/material.dart';

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({super.key});

  @override
  State<HomeWrapper> createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
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
          colors: [background_linear_gradient_1, background_linear_gradient_2],
        ),
      ),
      child: ListView(
        children: const [
          // *  Home App Bar
          HomeHeader(),
          // *  Home Search Text Input
          SearchField(),
          // *  Home Carousel Slider
          HomeCarouselSlider(),
          // *  Home Top Categories
          TopCategories(),
          // *  Home Popular Courses
          HomePopularCourses(),
          // *  Home Popular Mentor Section
          HomePopularMentor(),
          // *  Home More Courses Section
          HomeMoreCourses()
        ],
      ),
    );
  }
}
