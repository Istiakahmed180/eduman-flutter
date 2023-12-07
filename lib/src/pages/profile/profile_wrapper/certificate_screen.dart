import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: background_linear_gradient_1,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          "Certification",
          style: GoogleFonts.raleway(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              background_linear_gradient_1,
              background_linear_gradient_2
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Image.asset(
                  "lib/src/assets/certificate.png",
                  width: screenWidth * 0.75,
                ),
              ),
            ),
            const Spacer(),
            download_button(context),
            // Pass the context to the download_button function
          ],
        ),
      ),
    );
  }

  Widget download_button(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showSnackBar(context); // Call the showSnackBar function here
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40, top: 15),
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0XFF23408F),
          ),
          child: Center(
            child: Text(
              "Download Certificate",
              style: GoogleFonts.nunito(
                textStyle: const TextStyle(
                  color: Color(0XFFFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void showSnackBar(BuildContext context) {
  showTopSnackBar(
    Overlay.of(context),
    CustomSnackBar.success(
      message: "Download Complete",
      textStyle: GoogleFonts.nunito(
        textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      backgroundColor: background_linear_gradient_1.withOpacity(0.8),
    ),
  );
}
