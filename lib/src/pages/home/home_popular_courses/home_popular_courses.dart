import 'dart:async';
import 'package:eduman_flutter/src/model/top_courses_model.dart';
import 'package:eduman_flutter/src/pages/course_information/course_information.dart';
import 'package:eduman_flutter/src/pages/home/home_popular_courses/popular_courses_screen.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePopularCourses extends StatefulWidget {
  const HomePopularCourses({Key? key}) : super(key: key);

  @override
  HomePopularCoursesState createState() => HomePopularCoursesState();
}

class HomePopularCoursesState extends State<HomePopularCourses> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      int currentPage = _pageController.page!.toInt();
      int totalPages = (topCoursesModel.length / 2).ceil();

      if (currentPage < totalPages - 1) {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      } else {
        _pageController.animateToPage(
          0,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Calculate a responsive height for the PageView
    double pageViewHeight = 246;

    return Container(
      margin: EdgeInsets.only(
        top: screenHeight * 0.035,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Popular Courses",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.045)),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PopularCoursesScreen(),
                    ),
                  );
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
          Container(
            margin: const EdgeInsets.only(top: 16),
            height: pageViewHeight,
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: (topCoursesModel.length / 2).ceil(),
                    itemBuilder: (BuildContext context, int index) {
                      int firstCardIndex = index * 2;
                      int secondCardIndex = (index * 2) + 1;

                      return Row(
                        children: [
                          _buildCard(
                              firstCardIndex, screenWidth, pageViewHeight),
                          _buildCard(
                              secondCardIndex, screenWidth, pageViewHeight),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: _buildDots((topCoursesModel.length / 2).ceil()),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCard(int index, double screenWidth, double pageViewHeight) {
    if (index >= topCoursesModel.length) {
      return Container();
    }

    return SizedBox(
      width: (screenWidth - 32) / 2,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CourseInformation(),
            ),
          );
        },
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4)),
                        child: Image.asset(
                          topCoursesModel[index].image,
                          width: screenWidth,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color(0xFFFFB800),
                              size: 17,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              topCoursesModel[index].rating,
                              style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700)),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  topCoursesModel[index].title,
                  style: GoogleFonts.nunito(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          height: 1.2)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          const ImageIcon(
                            AssetImage(
                                "lib/src/assets/icons/image_icon/time.png"),
                            size: 14,
                            color: neutral_text,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 0.8),
                            child: Text(
                              topCoursesModel[index].duration,
                              style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                      color: neutral_text,
                                      fontWeight: FontWeight.w600)),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const ImageIcon(
                            AssetImage(
                                "lib/src/assets/icons/image_icon/dollar-symbol.png"),
                            size: 16,
                            color: neutral_text,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 1),
                            child: Text(
                              topCoursesModel[index].price,
                              style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                      color: neutral_text,
                                      fontWeight: FontWeight.w600)),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDots(int totalDots) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalDots, (index) {
        return Container(
          margin: const EdgeInsets.only(right: 8, top: 16),
          width: 9,
          height: 9,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index
                ? primary_button
                : const Color(0xFFC6C7CC),
          ),
        );
      }),
    );
  }
}
