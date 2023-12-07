import 'package:eduman_flutter/src/pages/welcome/welcome_onboarding.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding:
              EdgeInsets.fromLTRB(screenWidth * 0.04, 0, screenWidth * 0.04, 0),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                background_linear_gradient_2,
                background_linear_gradient_1
              ],
            ),
          ),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: screenHeight * 0.1, bottom: screenHeight * 0.01),
                    child: Image.asset(
                      "lib/src/assets/welcome/eduman-logo.png",
                      width: screenWidth * 0.2,
                    ),
                  ),
                  Positioned(
                      left: 0,
                      child: Image.asset("lib/src/assets/welcome/shape_9.png"))
                ],
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: screenHeight * 0.02),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          "Start Learning with",
                          style: GoogleFonts.raleway(
                              textStyle:
                                  TextStyle(fontSize: screenWidth * 0.07),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: screenHeight * 0.003,
                        ),
                        Stack(
                          children: [
                            Text(
                              "Eduman",
                              style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                      fontSize: screenWidth * 0.07,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Positioned(
                                left: 75,
                                child: Image.asset(
                                    "lib/src/assets/welcome/shape_8.png"))
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Text(
                          "Explore a variety of interactive lesson.",
                          style: GoogleFonts.nunito(
                              fontSize: screenWidth * 0.04,
                              color: neutral_text),
                        ),
                        Text(
                          "video, quizze & assignment",
                          style: GoogleFonts.nunito(
                              fontSize: screenWidth * 0.04,
                              color: neutral_text),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      left: 30,
                      child: Image.asset(
                        "lib/src/assets/welcome/shape_3.png",
                      )),
                  Positioned(
                      right: 0,
                      child: Image.asset("lib/src/assets/welcome/shape_2.png"))
                ],
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              SizedBox(
                width: double.infinity,
                height: screenHeight * 0.06,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primary_button,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        )),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Onboarding()));
                    },
                    child: Text(
                      "Getting Started",
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
              ),
              Container(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Image.asset(
                      "lib/src/assets/welcome/welcome_background.png",
                      height: screenHeight * 0.40,
                      width: screenWidth,
                    ),
                    Positioned(
                      top: 20,
                      child: Image.asset("lib/src/assets/welcome/shape.png"),
                    ),
                    Positioned(
                        top: 40,
                        left: 70,
                        child:
                            Image.asset("lib/src/assets/welcome/circule.png")),
                    Positioned(
                        top: 25,
                        left: 5,
                        child:
                            Image.asset("lib/src/assets/welcome/shape_4.png")),
                    Positioned(
                        right: 0,
                        top: 25,
                        child:
                            Image.asset("lib/src/assets/welcome/shape_5.png")),
                    Positioned(
                        left: 140,
                        top: 8,
                        child:
                            Image.asset("lib/src/assets/welcome/shape_6.png"))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
