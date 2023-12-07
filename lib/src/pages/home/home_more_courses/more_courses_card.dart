import 'package:eduman_flutter/src/model/top_categories_courses.dart';
import 'package:eduman_flutter/src/pages/course_information/course_information.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreCoursesCard extends StatelessWidget {
  const MoreCoursesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: screenWidth * 0.02),
      child: Column(
        children: courseModel.map((course) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CourseInformation()));
            },
            child: Container(
              margin: const EdgeInsets.only(top: 16),
              padding: const EdgeInsets.all(8),
              width: screenWidth,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.25,
                    height: screenWidth * 0.25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        course.courseImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.title,
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 80,
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Image.asset(
                                          course.studentImageOne,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 23,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Image.asset(
                                          course.studentImageTwo,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 45,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Image.asset(
                                          course.studentImageThree,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 2),
                                child: Text(
                                  '${course.studentCount}+ Student',
                                  style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF808080),
                                        fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 214,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const ImageIcon(
                                  size: 15.5,
                                  color: Color(0xFF808080),
                                  AssetImage(
                                    "lib/src/assets/icons/image_icon/agenda.png",
                                  ),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 1),
                                  child: Text(
                                    '${course.lessonCount} Lessons',
                                    style: GoogleFonts.nunito(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF808080),
                                          fontSize: 15),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 3),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 2),
                                    child: const ImageIcon(
                                      size: 14,
                                      color: Color(0xFF808080),
                                      AssetImage(
                                          "lib/src/assets/icons/image_icon/user.png"),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 3),
                                    child: Text(
                                      course.instructorName,
                                      style: GoogleFonts.nunito(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          color: Color(0xFF808080),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 1),
                                  child: const Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 16,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 1),
                                  child: Text(
                                    course.rating,
                                    style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
