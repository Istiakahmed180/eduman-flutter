import 'package:eduman_flutter/src/pages/course_information/course_information_payment.dart';
import 'package:eduman_flutter/src/pages/profile/profile_wrapper/certificate_screen.dart';
import 'package:eduman_flutter/src/pages/profile/profile_wrapper/feedback_screen.dart';
import 'package:eduman_flutter/src/pages/profile/profile_wrapper/help_center.dart';
import 'package:eduman_flutter/src/pages/profile/profile_wrapper/privacy_policy.dart';
import 'package:eduman_flutter/src/pages/signin/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileAccountDetails extends StatelessWidget {
  const ProfileAccountDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      margin: EdgeInsets.only(
        top: screenHeight * 0.02,
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CertificateScreen()));
            },
            child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0XFF23408F).withOpacity(0.14),
                          offset: const Offset(-4, 5),
                          blurRadius: 16),
                    ],
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 15),
                            const Image(
                              image: AssetImage(
                                  "lib/src/assets/icons/image_icon/prorfileoptionicon1st.png"),
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(width: 15),
                            Text(
                              "My Certifications",
                              style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(
                                    "lib/src/assets/icons/image_icon/right_arrow.png"),
                                height: 24,
                                width: 24,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          ),
          Container(
              margin: EdgeInsets.only(top: screenHeight * 0.02),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0XFF23408F).withOpacity(0.14),
                        offset: const Offset(-4, 5),
                        blurRadius: 16),
                  ],
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 15),
                          const Image(
                            image: AssetImage(
                                "lib/src/assets/icons/image_icon/prorfileoptionicon2nd.png"),
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(width: 15),
                          Text(
                            "My Projects",
                            style: GoogleFonts.nunito(
                                textStyle: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage(
                                  "lib/src/assets/icons/image_icon/right_arrow.png"),
                              height: 24,
                              width: 24,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.only(top: screenHeight * 0.02),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0XFF23408F).withOpacity(0.14),
                        offset: const Offset(-4, 5),
                        blurRadius: 16),
                  ],
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 15),
                          const Image(
                            image: AssetImage(
                                "lib/src/assets/icons/image_icon/prorfileoptionicon3rd.png"),
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(width: 15),
                          Text(
                            "Saved Course",
                            style: GoogleFonts.nunito(
                                textStyle: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage(
                                  "lib/src/assets/icons/image_icon/right_arrow.png"),
                              height: 24,
                              width: 24,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              )),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CourseInformationPayment()));
            },
            child: Container(
                margin: EdgeInsets.only(top: screenHeight * 0.02),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0XFF23408F).withOpacity(0.14),
                          offset: const Offset(-4, 5),
                          blurRadius: 16),
                    ],
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 15),
                            const Image(
                              image: AssetImage(
                                  "lib/src/assets/icons/image_icon/prorfileoptionicon4th.png"),
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(width: 15),
                            Text(
                              "My Card",
                              style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(
                                    "lib/src/assets/icons/image_icon/right_arrow.png"),
                                height: 24,
                                width: 24,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HelpCenter()));
            },
            child: Container(
                margin: EdgeInsets.only(top: screenHeight * 0.02),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0XFF23408F).withOpacity(0.14),
                          offset: const Offset(-4, 5),
                          blurRadius: 16),
                    ],
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 15),
                            const Image(
                              image: AssetImage(
                                  "lib/src/assets/icons/image_icon/prorfileoptionicon5th.png"),
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(width: 15),
                            Text(
                              "Help Center",
                              style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(
                                    "lib/src/assets/icons/image_icon/right_arrow.png"),
                                height: 24,
                                width: 24,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PrivacyPolicy()));
            },
            child: Container(
                margin: EdgeInsets.only(top: screenHeight * 0.02),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0XFF23408F).withOpacity(0.14),
                          offset: const Offset(-4, 5),
                          blurRadius: 16),
                    ],
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 15),
                            const Image(
                              image: AssetImage(
                                  "lib/src/assets/icons/image_icon/prorfileoptionicon6th.png"),
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(width: 15),
                            Text(
                              "Privacy Policy",
                              style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(
                                    "lib/src/assets/icons/image_icon/right_arrow.png"),
                                height: 24,
                                width: 24,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FeedbackScreen()));
            },
            child: Container(
                margin: EdgeInsets.only(top: screenHeight * 0.02),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0XFF23408F).withOpacity(0.14),
                          offset: const Offset(-4, 5),
                          blurRadius: 16),
                    ],
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 15),
                            const Image(
                              image: AssetImage(
                                  "lib/src/assets/icons/image_icon/prorfileoptionicon7th.png"),
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(width: 15),
                            Text(
                              "Feedback",
                              style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(
                                    "lib/src/assets/icons/image_icon/right_arrow.png"),
                                height: 24,
                                width: 24,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {
              rateUsDialog(context, screenHeight);
            },
            child: Container(
                margin: EdgeInsets.only(top: screenHeight * 0.02),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0XFF23408F).withOpacity(0.14),
                          offset: const Offset(-4, 5),
                          blurRadius: 16),
                    ],
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 15),
                            const Image(
                              image: AssetImage(
                                  "lib/src/assets/icons/image_icon/prorfileoptionicon8th.png"),
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(width: 15),
                            Text(
                              "Rate Us",
                              style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(
                                    "lib/src/assets/icons/image_icon/right_arrow.png"),
                                height: 24,
                                width: 24,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.02),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Signin()));
              },
              child: Container(
                height: 56,
                width: 374,

                //color: Color(0XFF23408F),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFF23408F),
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text("Logout",
                      style: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                        color: Color(0xFF23408F),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ))),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future rateUsDialog(BuildContext context, screenHeight) async {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const Text(""),
          content: SizedBox(
            height: screenHeight / 1.5,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Image(
                    image: AssetImage(
                        'lib/src/assets/icons/image_icon/rateUs.png'),
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 42),
                  child: Text(
                    "Give Your Opinion",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      color: Color(0XFF000000),
                    )),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Make better math goal for you, and would love to know how would rate our app?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF000000),
                    )),
                  ),
                ),
                const SizedBox(height: 15),
                RatingBar(
                  initialRating: 3,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 25,
                  glow: false,
                  ratingWidget: RatingWidget(
                    full: const Image(
                      image: AssetImage(
                          "lib/src/assets/icons/image_icon/fidbackfillicon.png"),
                    ),
                    half: const Image(
                      image: AssetImage(
                          "lib/src/assets/icons/image_icon/fidbackemptyicon.png"),
                    ),
                    empty: const Image(
                      image: AssetImage(
                          "lib/src/assets/icons/image_icon/fidbackemptyicon.png"),
                    ),
                  ),
                  itemPadding: const EdgeInsets.symmetric(horizontal: 10),
                  onRatingUpdate: (rating) {},
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context); // Close the dialog
                          },
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: const Color(0XFF23408F),
                            ),
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0XFFFFFFFF),
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                )),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            // Handle the Submit action
                          },
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF23408F),
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Center(
                              child: Text(
                                "Submit",
                                style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF23408F),
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                )),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
