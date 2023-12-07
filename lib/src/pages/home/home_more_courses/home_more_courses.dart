import 'package:eduman_flutter/src/model/more_courses_model.dart';
import 'package:eduman_flutter/src/pages/course_information/course_information.dart';
import 'package:eduman_flutter/src/pages/home/home_more_courses/wrapper_more_courses.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeMoreCourses extends StatefulWidget {
  const HomeMoreCourses({Key? key}) : super(key: key);

  @override
  HomeMoreCoursesState createState() => HomeMoreCoursesState();
}

class HomeMoreCoursesState extends State<HomeMoreCourses> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(top: screenWidth * 0.08),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "More Courses",
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.045,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WrapperMoreCourses()));
                },
                child: Text(
                  "See All",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF2467EC),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: moreCoursesModel.map((course) {
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
                            course.image,
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
                                              course.mentorImageOne,
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
                                              course.mentorImageTwo,
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
                                              course.mentorImageThree,
                                              width: 30,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 2),
                                        child: Text(
                                          course.rating,
                                          style: GoogleFonts.nunito(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 2),
                                        child: Text(
                                          '(${course.student})',
                                          style: GoogleFonts.nunito(
                                            textStyle: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  const ImageIcon(
                                    size: 14,
                                    color: Color(0xFF808080),
                                    AssetImage(
                                      "lib/src/assets/icons/image_icon/calendar.png",
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 2),
                                    child: Text(
                                      course.date,
                                      style: GoogleFonts.nunito(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF808080),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: screenWidth * 0.07,
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 2),
                                    child: const ImageIcon(
                                      size: 15,
                                      color: Color(0xFF808080),
                                      AssetImage(
                                          "lib/src/assets/icons/image_icon/location.png"),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 2),
                                    child: Text(
                                      course.address,
                                      style: GoogleFonts.nunito(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF808080),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
