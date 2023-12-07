import 'package:eduman_flutter/src/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseInformationPaymentSuccess extends StatelessWidget {
  const CourseInformationPaymentSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF123456),
              Color(0xFF789ABC)
            ], // Replace with your desired colors
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: const EdgeInsets.only(top: 35, bottom: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('lib/src/assets/payment/successpayment.png'),
              height: 120,
              width: 120,
            ),
            const SizedBox(height: 10),
            Text(
              "Payment Successful",
              style: GoogleFonts.raleway(
                textStyle: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
              style: GoogleFonts.nunito(
                textStyle: const TextStyle(
                  color: Color(0XFF292929),
                  fontSize: 15,
                  fontStyle: FontStyle.normal,
                ),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: const Color(0XFF23408F),
                  minimumSize: const Size(374, 56),
                ),
                child: Text(
                  "Back To Home",
                  style: GoogleFonts.raleway(
                    textStyle: const TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
