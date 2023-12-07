import 'package:eduman_flutter/src/pages/course_information/course_information-hero.dart';
import 'package:eduman_flutter/src/pages/course_information/course_information_about.dart';
import 'package:eduman_flutter/src/pages/course_information/course_information_header.dart';
import 'package:eduman_flutter/src/pages/course_information/course_information_lesson.dart';
import 'package:eduman_flutter/src/pages/course_information/course_information_payment.dart';
import 'package:eduman_flutter/src/pages/course_information/course_information_review.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseInformation extends StatefulWidget {
  const CourseInformation({Key? key}) : super(key: key);

  @override
  State<CourseInformation> createState() => _CourseInformationState();
}

class _CourseInformationState extends State<CourseInformation> {
  int activePageIndex = 0;
  Duration animationDuration = const Duration(milliseconds: 500);

  void handleButtonPress(int pageIndex) {
    setState(() {
      activePageIndex = pageIndex;
    });
  }

  Widget buildButton(int pageIndex, String buttonName) {
    BorderRadius borderRadius = BorderRadius.circular(50);
    double buttonWidth = (MediaQuery.of(context).size.width - 32) / 3;

    return GestureDetector(
      onTap: () => handleButtonPress(pageIndex),
      child: AnimatedContainer(
        duration: animationDuration,
        alignment: Alignment.center,
        width: buttonWidth,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: activePageIndex == pageIndex
              ? primary_button // Change this to your primary button color
              : const Color(0xFFE1E9F8),
        ),
        child: Text(
          buttonName,
          style: GoogleFonts.nunito(
            textStyle: TextStyle(
              color: activePageIndex == pageIndex ? Colors.white : Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    List<Widget> pages = [
      const CourseInformationAbout(),
      const CourseInformationLesson(),
      const CourseInformationReview()
    ];

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          padding: const EdgeInsets.only(left: 16, right: 16),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                background_linear_gradient_1,
                background_linear_gradient_2
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (activePageIndex == 0 ||
                  activePageIndex == 1 ||
                  activePageIndex == 2)
                const CourseInformationHeader(),
              if (activePageIndex == 0) const CourseInformationHero(),
              Container(
                margin: const EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  color: const Color(0xFFE1E9F8),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildButton(
                      0,
                      activePageIndex == 1 || activePageIndex == 2
                          ? "Course"
                          : "About",
                    ),
                    buildButton(1, "Lesson"),
                    buildButton(2, "Review"),
                  ],
                ),
              ),
              Expanded(
                child: pages[activePageIndex],
              ),
              Container(
                width: screenWidth,
                margin: const EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      backgroundColor: primary_button,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CourseInformationPayment(),
                      ),
                    );
                  },
                  child: Text(
                    "Enroll Now",
                    style: GoogleFonts.nunito(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
