import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutAchievement extends StatelessWidget {
  const AboutAchievement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.only(top: 50, bottom: 20),
      child: Column(
        children: [
          Container(
              alignment: Alignment.center,
              child: Text(
                "Our Achievement",
                style: GoogleFonts.nunito(
                    fontSize: 20, fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 280,
            child: GridView.count(
              primary: false,
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 1.4,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "lib/src/assets/about/About_Student.png",
                        width: screenWidth * 0.15,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "68,806",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                      Text(
                        "Students Enrolled",
                        style:
                            GoogleFonts.nunito(color: const Color(0xFF626262)),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "lib/src/assets/about/About_Computer.png",
                        width: screenWidth * 0.15,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "5,740",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "Class Completed",
                        style:
                            GoogleFonts.nunito(color: const Color(0xFF626262)),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "lib/src/assets/about/About_Student_Book.png",
                        width: screenWidth * 0.15,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "470+",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "Premium Courses",
                        style:
                            GoogleFonts.nunito(color: const Color(0xFF626262)),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "lib/src/assets/about/About_book.png",
                        width: screenWidth * 0.15,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "6,548",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "Primium Courses",
                        style:
                            GoogleFonts.nunito(color: const Color(0xFF626262)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
