import 'package:eduman_flutter/src/model/onboarding_model.dart';
import 'package:eduman_flutter/src/pages/signin/signin_page.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPageIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              background_linear_gradient_1,
              background_linear_gradient_2
            ],
            stops: [0.0, 0.2],
          )),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: contents.length,
                  controller: pageController,
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: const EdgeInsets.all(35),
                      child: Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Image.asset(
                              contents[i].image,
                              width: screenWidth,
                              height: screenHeight * 0.35,
                            ),
                            SizedBox(
                              height: screenHeight * 0.08,
                            ),
                            Text(
                              contents[i].title,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.raleway(
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.055,
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                contents[i].description,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                    fontSize: screenWidth * 0.04,
                                    color: neutral_text),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  onPageChanged: (int page) {
                    setState(() {
                      currentPageIndex = page;
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                  (index) => Container(
                    height: 10,
                    width: 10,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: index == currentPageIndex
                          ? primary_button
                          : unactive_dot,
                    ),
                  ),
                ),
              ),
              Container(
                height: 48,
                width: double.infinity,
                margin: const EdgeInsets.all(26),
                child: currentPageIndex == contents.length - 1
                    ? ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Signin()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primary_button,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0))),
                        child: const Text(
                          "Done",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          if (currentPageIndex < contents.length - 1) {
                            pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primary_button,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0))),
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
