import 'package:eduman_flutter/src/pages/home/home_popular_mentor/popular_mentor_details.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularMentors extends StatelessWidget {
  final List<dynamic> mentors;

  const PopularMentors({Key? key, required this.mentors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 10,
          backgroundColor: background_linear_gradient_1,
          iconTheme: const IconThemeData(color: Colors.black),
          title: Text(
            "Mentors",
            style: GoogleFonts.raleway(
                fontWeight: FontWeight.bold, color: Colors.black),
          )),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                background_linear_gradient_1,
                background_linear_gradient_2
              ])),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: mentors.length,
            itemBuilder: (context, index) {
              var mentor = mentors[index];

              return MentorCard(
                mentor: mentor,
              );
            },
          ),
        ),
      ),
    );
  }
}

class MentorCard extends StatelessWidget {
  final dynamic mentor;

  const MentorCard({Key? key, required this.mentor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PopularMentorDetails(mentor: mentor)));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // * Display mentor image
            Image.asset(mentor["mentorImage"], height: 80, width: 80),
            // * Display mentor name
            const SizedBox(
              height: 10,
            ),
            Text(
              mentor["mentorName"],
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            // * Display mentor position
            Text(
              mentor["position"],
              style: GoogleFonts.nunito(
                color: neutral_text_2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
