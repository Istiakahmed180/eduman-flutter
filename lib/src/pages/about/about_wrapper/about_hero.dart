import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutHero extends StatelessWidget {
  const AboutHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset("lib/src/assets/about/About_Hero.jpg"),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Why Choose Us?",
            style:
                GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            "For Your Knowledge Growth",
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w600, color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Elevate your skills and advance your career. Don't miss out on this opportunity to excel. Join us today and unlock your potential!",
            style: GoogleFonts.nunito(),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Image.asset("lib/src/assets/icons/image_icon/success.png"),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Free access to handcrafted courses",
                style: GoogleFonts.nunito(fontSize: 15),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Image.asset("lib/src/assets/icons/image_icon/success.png"),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Easy enrollment process",
                style: GoogleFonts.nunito(fontSize: 15),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Image.asset("lib/src/assets/icons/image_icon/success.png"),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Earn certificates for each course",
                style: GoogleFonts.nunito(fontSize: 15),
              )
            ],
          ),
        ],
      ),
    );
  }
}
