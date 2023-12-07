import 'package:eduman_flutter/src/pages/about/about_wrapper/about_achievement.dart';
import 'package:eduman_flutter/src/pages/about/about_wrapper/about_education_categories.dart';
import 'package:eduman_flutter/src/pages/about/about_wrapper/about_header.dart';
import 'package:eduman_flutter/src/pages/about/about_wrapper/about_hero.dart';
import 'package:eduman_flutter/src/pages/about/about_wrapper/about_online_course_intro.dart';
import 'package:flutter/material.dart';

class AboutWrapper extends StatelessWidget {
  const AboutWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        // *   About Header Section
        AboutHeader(),
        // *   About Hero Section
        AboutHero(),
        // *   About Education Categories Section
        AboutEducationCategories(),
        // *   About Online Course Intro Video Section
        AboutOnlineCourseIntro(),
        // *   About Acieevement Section
        AboutAchievement()
      ],
    );
  }
}
