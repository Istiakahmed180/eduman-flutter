import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularMentorDetails extends StatelessWidget {
  final dynamic mentor;

  const PopularMentorDetails({Key? key, required this.mentor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: background_linear_gradient_1,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          "Mentor Details",
          style: GoogleFonts.raleway(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // * Mentor Course Image Section
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  mentor["courseImage"],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: screenHeight * 0.25,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              // * Mentor Name Section
              Text(
                mentor["mentorName"],
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              // * Mentor Position Section
              Text(
                mentor["position"],
                style: GoogleFonts.nunito(
                  color: const Color(0xFF818282),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              // * Border Section
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(
                      0xFFD2D5DB,
                    ),
                    width: 0.4,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              // * Mentor Rating And Courses Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const ImageIcon(
                        size: 16,
                        color: Color(0xFFFFA500),
                        AssetImage(
                            "lib/src/assets/icons/image_icon/Vector.png"),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 1.5),
                        child: Text(
                          '${mentor["rating"]} (${mentor["student"]})',
                          style: GoogleFonts.nunito(
                            color: const Color(0xFF878888),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 2),
                    child: Row(
                      children: [
                        const ImageIcon(
                          size: 16,
                          color: Color(0xFF818181),
                          AssetImage(
                              "lib/src/assets/icons/image_icon/agenda.png"),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          '${mentor["courses"]} Courses',
                          style: GoogleFonts.nunito(
                            color: const Color(0xFF818181),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),

              // * Mentor Biography Section
              const SizedBox(
                height: 30,
              ),
              Text(
                "Biography",
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                mentor["biography"],
                style: GoogleFonts.nunito(
                  color: const Color(0xFF8C8D93),
                  fontSize: 15,
                ),
                textAlign: TextAlign.justify,
              ),
              // * Mentor Skills Section
              const SizedBox(
                height: 8,
              ),
              // Using Wrap to create a horizontal list of skills
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: background_linear_gradient_1.withOpacity(0.4),
                      spreadRadius: 5,
                      blurRadius: 50,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 8.0,
                  children: mentor["skills"].map<Widget>((skill) {
                    return Chip(
                      label: Text(
                        skill,
                      ),
                      backgroundColor: Colors.white,
                    );
                  }).toList(),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
