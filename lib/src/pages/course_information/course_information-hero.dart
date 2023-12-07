import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseInformationHero extends StatelessWidget {
  const CourseInformationHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(top: screenHeight * 0.02),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // * Course Informaiton Image Section
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                "lib/src/assets/carousel/course_information_image.png",
                fit: BoxFit.cover,
                width: double.infinity,
                height: screenHeight * 0.25,
              ),
            ),
            Positioned(
                left: 8,
                top: 8,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFB013),
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Best Seller",
                        style: GoogleFonts.nunito(
                            textStyle: const TextStyle(
                          fontWeight: FontWeight.w700,
                        )),
                      )),
                )),
            Positioned(
                right: 8,
                top: 10,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
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
                        "4.7",
                        style: GoogleFonts.nunito(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                ))
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        // * Course Information Title Section
        Text(
          "Top Effective Modern Business Communication",
          style: GoogleFonts.raleway(
            fontWeight: FontWeight.w700,
            fontSize: screenWidth * 0.048,
          ),
        ),
        const SizedBox(
          height: 16,
        ),

        // * Course Information Instructor Section
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const ImageIcon(
                    size: 20,
                    color: Color(0xFF8A8A8A),
                    AssetImage(
                        "lib/src/assets/icons/image_icon/instructor_user.png")),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 1),
                  child: Text(
                    "Robert Mike",
                    style: GoogleFonts.nunito(
                        color: neutral_text,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 1),
                  child: const ImageIcon(
                      size: 18,
                      color: Color(0xFF8A8A8A),
                      AssetImage("lib/src/assets/icons/image_icon/play.png")),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 1),
                  child: Text(
                    "20 Lesson",
                    style: GoogleFonts.nunito(
                        color: neutral_text,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            Row(
              children: [
                const ImageIcon(
                    size: 18,
                    color: Color(0xFF8A8A8A),
                    AssetImage(
                        "lib/src/assets/icons/image_icon/certificate.png")),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 1),
                  child: Text(
                    "Certificate",
                    style: GoogleFonts.nunito(
                        color: neutral_text,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ],
        ),

        const SizedBox(
          height: 16,
        ),

        // * Course Information Mentor Audience And Price Section
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              // * Course Information Mentor Image Section
              SizedBox(
                width: 110,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(
                        "lib/src/assets/mentor/mentor_1.png",
                        width: 35,
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
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(
                          "lib/src/assets/mentor/mentor_2.png",
                          width: 35,
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
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(
                          "lib/src/assets/mentor/mentor_3.png",
                          width: 35,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 68,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "45+",
                              style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                      color: Colors.white, fontSize: 12)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
            ]),
            // * Course Information Details Price Section
            Row(
              children: [
                const ImageIcon(
                  size: 18,
                  color: event_text_color,
                  AssetImage(
                      "lib/src/assets/icons/image_icon/dollar-currency-symbol.png"),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 1),
                  child: Text(
                    "39.00",
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                        color: event_text_color),
                  ),
                )
              ],
            )
          ],
        ),
      ]),
    );
  }
}
