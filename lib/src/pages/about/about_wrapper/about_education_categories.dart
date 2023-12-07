import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutEducationCategories extends StatelessWidget {
  const AboutEducationCategories({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Container(
              alignment: Alignment.center,
              child: Text(
                "Education Categories",
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
                        "lib/src/assets/icons/image_icon/business.png",
                        width: screenWidth * 0.15,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Business",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
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
                        "lib/src/assets/icons/image_icon/development.png",
                        width: screenWidth * 0.15,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Development",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
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
                        "lib/src/assets/icons/image_icon/data_science.png",
                        width: screenWidth * 0.15,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Data Science",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
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
                        "lib/src/assets/icons/image_icon/arts_and_design.png",
                        width: screenWidth * 0.15,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Arts And Design",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
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
