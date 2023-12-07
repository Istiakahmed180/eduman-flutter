import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 10,
          backgroundColor: background_linear_gradient_1,
          iconTheme: const IconThemeData(color: Colors.black),
          title: Text(
            "Privacy Policy",
            style: GoogleFonts.raleway(
                fontWeight: FontWeight.bold, color: Colors.black),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  background_linear_gradient_1,
                  background_linear_gradient_2
                ])),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Privacy Policy",
                        style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 22)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  question(
                    '1.Types of data we collect',
                  ),
                  const SizedBox(height: 10),
                  answer(
                      'This refers to information that lets us know the specifics of who you are. Examples of PII may include your first and last name; you or your child’s school or district name.'),
                  const SizedBox(height: 30),
                  question('2. Disclosure of your data'),
                  const SizedBox(height: 10),
                  answer(
                      'We are also a signatory to the Student Privacy Pledge, agreeing to a set of principles intended to safeguard student privacy, including responsible stewardship, protection,'),
                  const SizedBox(height: 30),
                  question('3. Use of your personal data'),
                  const SizedBox(height: 10),
                  answer(
                      'Depending on how you use our Services, we may store cookies on your computer in order to collect certain aggregate data about our users and to customize certain aspects of your specific user experience.')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  question(String s) {
    return Text(
      s,
      style: GoogleFonts.nunito(
          textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0XFF000000))),
    );
  }

  answer(String s) {
    return Text(
      s,
      style: GoogleFonts.nunito(
          textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Color(0XFF292929))),
      textAlign: TextAlign.justify,
    );
  }
}
