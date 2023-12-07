import 'dart:convert';

import 'package:eduman_flutter/src/pages/home/home_popular_mentor/popular_mentor_details.dart';
import 'package:eduman_flutter/src/pages/home/home_popular_mentor/popular_mentors.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePopularMentor extends StatefulWidget {
  const HomePopularMentor({Key? key}) : super(key: key);

  @override
  HomePopularMentorState createState() => HomePopularMentorState();
}

class HomePopularMentorState extends State<HomePopularMentor> {
  List _mentors = [];
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    readMentors();
    _currentPage = _pageController.initialPage;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> readMentors() async {
    final String response =
        await rootBundle.loadString("lib/src/model/mentor_model.json");
    final data = await json.decode(response);
    setState(() {
      _mentors = data["mentors"];
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(
        top: screenHeight * 0.035,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Mentor",
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
                          builder: (context) =>
                              PopularMentors(mentors: _mentors)));
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
            height: 170,
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
                    itemCount: (_mentors.length / 3).ceil(),
                    itemBuilder: (BuildContext context, int index) {
                      int firstCardIndex = index * 3;
                      int secondCardIndex = (index * 3) + 1;
                      int thirdCardIndex = (index * 3) + 2;

                      return Row(
                        children: [
                          _buildCard(firstCardIndex, screenWidth),
                          _buildCard(secondCardIndex, screenWidth),
                          _buildCard(thirdCardIndex, screenWidth),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: _buildDots((_mentors.length / 3).ceil()),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCard(int index, double screenWidth) {
    if (index < _mentors.length) {
      final cardWidth = (screenWidth - 32) / 3;
      final mentor = _mentors[index];

      return SizedBox(
        width: cardWidth,
        child: InkWell(
          onTap: () {
            _handleCardTap(mentor);
          },
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  mentor["mentorImage"],
                  width: cardWidth * 0.58,
                  height: cardWidth * 0.58,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  mentor["mentorName"],
                  style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 15)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 2),
                      child: const Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      mentor["rating"],
                      style: GoogleFonts.nunito(
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.w600)),
                    ),
                    Text(
                      '(${mentor["student"].toString()})',
                      style: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: neutral_text_2)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
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

  void _handleCardTap(Map<String, dynamic> mentor) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PopularMentorDetails(mentor: mentor)));
  }
}
