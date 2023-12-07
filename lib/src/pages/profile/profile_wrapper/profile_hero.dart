import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHero extends StatelessWidget {
  const ProfileHero({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      margin: const EdgeInsets.only(top: 16),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF216FDE), Color(0xFF0751BC)])),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      border: Border.all(color: Colors.white, width: 2)),
                  child: ClipRRect(
                    child: Image.asset(
                      "lib/src/assets/avater/user.png",
                      width: screenWidth * 0.13,
                      height: screenWidth * 0.13,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enita Bulligan",
                        style: GoogleFonts.raleway(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Congrats you have rech platinum",
                        style: GoogleFonts.raleway(color: Colors.white70),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenWidth * 0.27,
                    height: screenWidth * 0.20,
                    decoration: BoxDecoration(
                        color: const Color(0xFF1153B4),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const ImageIcon(
                          AssetImage(
                            "lib/src/assets/icons/image_icon/agenda.png",
                          ),
                          color: Colors.white,
                          size: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "53 Courses",
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.27,
                    height: screenWidth * 0.20,
                    decoration: BoxDecoration(
                        color: const Color(0xFF1153B4),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const ImageIcon(
                          AssetImage(
                            "lib/src/assets/icons/image_icon/time.png",
                          ),
                          color: Colors.white,
                          size: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "20 Hours",
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.27,
                    height: screenWidth * 0.20,
                    decoration: BoxDecoration(
                        color: const Color(0xFF1153B4),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const ImageIcon(
                          AssetImage(
                            "lib/src/assets/icons/image_icon/book.png",
                          ),
                          color: Colors.white,
                          size: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "120 Modules",
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(top: 16),
              width: screenWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Referral Program",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700, fontSize: 17),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Invite your friends to get free asset up to \$100",
                    style: GoogleFonts.nunito(
                        color: neutral_text, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
