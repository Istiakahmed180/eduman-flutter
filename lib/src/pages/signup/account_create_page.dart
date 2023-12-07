import 'package:eduman_flutter/src/pages/signin/signin_page.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountCreate extends StatelessWidget {
  const AccountCreate({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16),
          width: screenWidth,
          height: screenHeight,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                background_linear_gradient_1,
                background_linear_gradient_2
              ])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.45,
                  child: Image.asset(
                      "lib/src/assets/signin_&_signup/account_created.png"),
                ),
                Text(
                  "Account Created Successfully",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.raleway(
                      fontSize: screenHeight * 0.026,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Text(
                  "Your account has been created",
                  style: GoogleFonts.nunito(
                      fontSize: screenWidth * 0.04, color: unactive_dot),
                ),
                Text("successfully",
                    style: GoogleFonts.nunito(
                        fontSize: screenWidth * 0.04, color: unactive_dot)),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Signin()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primary_button,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4))),
                  child: Text(
                    "Explore Eduman",
                    style: GoogleFonts.nunito(
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
