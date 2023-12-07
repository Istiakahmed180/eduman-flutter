import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseInformationAbout extends StatefulWidget {
  const CourseInformationAbout({Key? key}) : super(key: key);

  @override
  State<CourseInformationAbout> createState() => _CourseInformationAboutState();
}

class _CourseInformationAboutState extends State<CourseInformationAbout> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    String introduction =
        "There are so many websites out there that have not considered the overall usability of their visually impaired users. When it comes to designing better links and sending better emails, Slava Shestopalov has a few tips on how to improve your websites experience while accessibility in mind. The participants will get general ideas of the land management system of business. Everyone must work, but for many of us that job is not just a paycheck, it is an opportunity to express ourselves and make something better. Entrepreneurs and go-getters often feel as if they carry the weight of an entire organization on their backs, and therefore could always use a little extra motivation.";

    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About Course",
              style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18)),
            ),
            const SizedBox(
              height: 10,
            ),
            isExpanded
                ? Text(
                    introduction,
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                            fontSize: 15.5, color: Color(0xFF525258)),
                        height: 1.5),
                    textAlign: TextAlign.justify,
                  )
                : Text(
                    introduction.length > 200
                        ? introduction.substring(0, 200)
                        : introduction,
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                            fontSize: 15.5, color: Color(0xFF525258)),
                        height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
            const SizedBox(
              height: 16,
            ),
            introduction.length > 200
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                    child: Text(
                      isExpanded ? "Show Less -" : "Show More +",
                      style: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                        color: primary_button,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  )
                : const SizedBox(),
            const SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
