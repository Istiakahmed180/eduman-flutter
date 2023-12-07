import 'package:eduman_flutter/src/pages/course/course_wrapper/course_categories_slider.dart';
import 'package:eduman_flutter/src/pages/event/event_wrapper/event_card_list.dart';
import 'package:eduman_flutter/src/pages/event/event_wrapper/event_header.dart';
import 'package:eduman_flutter/src/pages/event/event_wrapper/event_hero.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:eduman_flutter/src/widgets/search_field/search_field.dart';
import 'package:flutter/material.dart';

class EventWrapper extends StatelessWidget {
  const EventWrapper({Key? key}) : super(key: key);

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
          // * Event Header Section
          EventHeader(),
          // * Event Search Field Section
          SearchField(),
          // * Event Hero Section
          EventHero(),
          // * Event Course Categories Slide Section
          CourseCategoriesSlider(),
          // * Event Card List Section
          EventCardList()
        ],
      ),
    );
  }
}
