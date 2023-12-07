import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: background_linear_gradient_1,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          "Feedback",
          style: GoogleFonts.raleway(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
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
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Give Feedback",
                    style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 24)),
                  ),
                  const SizedBox(height: 12),
                  Text('Give your feedback about our app',
                      style: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                        fontSize: 15,
                        color: Color(0XFF000000),
                      ))),
                  const SizedBox(height: 40),
                  Text("Are you satisfied with this app?",
                      style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                              fontSize: 18,
                              color: Color(0XFF000000),
                              fontWeight: FontWeight.w500))),
                  const SizedBox(height: 16),
                  ratingbar(),
                  const SizedBox(height: 40),
                  Text("Tell us what can be improved!",
                      style: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                        fontSize: 15,
                        color: Color(0XFF000000),
                      ))),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Color(0XFF23408F), width: 1)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Color(0XFFDFDFDF), width: 1)),
                        hintText: 'Write your feedback...',
                        hintStyle: const TextStyle(
                            color: Color(0XFF6E758A), fontSize: 16)),
                    maxLines: 5,
                  ),
                  const SizedBox(height: 20),
                  submit_button(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  ratingbar() {
    return RatingBar(
      initialRating: 3,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 42,
      glow: false,
      ratingWidget: RatingWidget(
          full: const Image(
            image: AssetImage(
                "lib/src/assets/icons/image_icon/fidbackfillicon.png"),
            height: 21,
            width: 21,
          ),
          half: const Image(
              image: AssetImage(
                  "lib/src/assets/icons/image_icon/fidbackemptyicon.png"),
              height: 21,
              width: 21),
          empty: const Image(
            image: AssetImage(
                "lib/src/assets/icons/image_icon/fidbackemptyicon.png"),
            height: 21,
            width: 21,
          )),
      itemPadding: const EdgeInsets.symmetric(horizontal: 10),
      onRatingUpdate: (rating) {},
    );
  }

  Widget submit_button() {
    return Container(
      height: 45,
      width: 374,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0XFF23408F),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0XFF23408F),
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        child: Text(
          "Submit Feedback",
          style: GoogleFonts.raleway(
            textStyle: const TextStyle(
              color: Color(0XFFFFFFFF),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
