// Import necessary packages
import 'package:eduman_flutter/src/pages/course_information/course_lesson_video.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:eduman_flutter/src/model/course_module_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class CourseInformationLesson extends StatelessWidget {
  const CourseInformationLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: courseModule.length,
      itemBuilder: (context, index) {
        var coures = courseModule[index];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            index == 0
                ? Padding(
                    padding: const EdgeInsets.only(
                      bottom: 16,
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lesson 1 - Introduction",
                            style: GoogleFonts.nunito(
                                textStyle: const TextStyle(
                                    color: Color(0XFF6E758A),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700)),
                          ),
                          Container(
                            height: 23,
                            width: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: const Color(0XFFE5ECFF),
                            ),
                            child: Center(
                              child: Text(
                                "30 Min",
                                style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                        color: Color(0XFF23408F),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                : const SizedBox(),
            index == 3
                ? Padding(
                    padding: const EdgeInsets.only(
                      bottom: 16,
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lesson 2 - User Research",
                            style: GoogleFonts.nunito(
                                textStyle: const TextStyle(
                                    color: Color(0XFF6E758A),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700)),
                          ),
                          Container(
                            height: 23,
                            width: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: const Color(0XFFE5ECFF),
                            ),
                            child: Center(
                              child: Text(
                                "60 Min",
                                style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                        color: Color(0XFF23408F),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                : const SizedBox(),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              margin: const EdgeInsets.only(bottom: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0XFF23408F).withOpacity(0.14),
                    offset: const Offset(-4, 5),
                    blurRadius: 16,
                  ),
                ],
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: const Color(0XFFE5ECFF),
                        ),
                        child: Text(
                          "${coures.lessonID}",
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                            color: Color(0XFF23408F),
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          )),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 18),
                          Text(
                            coures.lessonName!,
                            style: GoogleFonts.nunito(
                                textStyle: const TextStyle(
                              color: Color(0XFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            )),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              coures.time!,
                              style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                color: Color(0XFF6E758A),
                                fontSize: 14,
                              )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      index < 3
                          ? GestureDetector(
                              child: Image(
                                image: AssetImage(coures.playIconImage!),
                                height: 26,
                                width: 26,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CourseLessonVideo()));
                              },
                            )
                          : GestureDetector(
                              child: Image(
                                image: AssetImage(coures.lockImageImage!),
                                height: 26,
                                width: 26,
                              ),
                              onTap: () {
                                showSnackBar(context);
                              },
                            )
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

void showSnackBar(context) {
  showTopSnackBar(
    Overlay.of(context),
    CustomSnackBar.info(
      message: "This lesson is locked!",
      textStyle: GoogleFonts.nunito(
          textStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)),
      backgroundColor: background_linear_gradient_1.withOpacity(0.8),
    ),
  );
}
