import 'package:eduman_flutter/src/pages/profile/profile_wrapper/contact_us.dart';
import 'package:eduman_flutter/src/pages/profile/profile_wrapper/faq_question.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  int activePageIndex = 0;
  Duration animationDuration = const Duration(milliseconds: 500);

  void handleButtonPress(int pageIndex) {
    setState(() {
      activePageIndex = pageIndex;
    });
  }

  Widget buildButton(int pageIndex, String buttonName) {
    BorderRadius borderRadius = BorderRadius.circular(50);
    double buttonWidth = (MediaQuery.of(context).size.width - 32) / 2;

    return GestureDetector(
      onTap: () => handleButtonPress(pageIndex),
      child: AnimatedContainer(
        duration: animationDuration,
        alignment: Alignment.center,
        width: buttonWidth,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: activePageIndex == pageIndex
              ? primary_button
              : const Color(0xFFE1E9F8),
        ),
        child: Text(
          buttonName,
          style: GoogleFonts.nunito(
            textStyle: TextStyle(
              color: activePageIndex == pageIndex ? Colors.white : Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    List<Widget> pages = [
      Container(
          margin: const EdgeInsets.only(top: 16), child: const FaqQuestion()),
      Container(
          margin: const EdgeInsets.only(top: 16), child: const ContactUs()),
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: background_linear_gradient_1,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          "Help Center",
          style: GoogleFonts.raleway(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (activePageIndex == 0 || activePageIndex == 1)
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE1E9F8),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildButton(0, "FAQ"),
                      buildButton(1, "Contact Us"),
                    ],
                  ),
                ),
              Expanded(
                child: pages[activePageIndex],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
