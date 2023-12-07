import 'package:eduman_flutter/src/model/event_model.dart';
import 'package:eduman_flutter/src/pages/event/event_wrapper/event_details_about_section.dart';
import 'package:eduman_flutter/src/pages/event/event_wrapper/event_details_header.dart';
import 'package:eduman_flutter/src/pages/event/event_wrapper/event_details_section.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventDetails extends StatelessWidget {
  final EventModelContent event;

  const EventDetails({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: screenWidth,
          padding: const EdgeInsets.only(left: 16, right: 16),
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
            children: [
              Expanded(
                child: ListView(
                  children: [
                    // * Event Details Header Section
                    const EventDetailsHeader(),
                    Container(
                      margin: EdgeInsets.only(top: screenHeight * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // * Event Details Image Section
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              event.eventImage,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: screenHeight * 0.25,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          // * Event Details Title Section
                          Text(
                            event.title,
                            style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w700,
                              fontSize: screenWidth * 0.05,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          // * Event Details Mentor Audience And Price Section
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                // * Event Mentor Image Section
                                SizedBox(
                                  width: 80,
                                  child: Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Image.asset(
                                          event.mentorImageOne,
                                          width: 32,
                                        ),
                                      ),
                                      Positioned(
                                        left: 23,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: Image.asset(
                                            event.mentorImageTwo,
                                            width: 32,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 45,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: Image.asset(
                                            event.mentorImageThree,
                                            width: 32,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                // * Event Details Audience Section
                                Row(
                                  children: [
                                    Text(
                                      '${event.audience}+ Going',
                                      style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                              // * Event Details Price Section
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(14, 8, 14, 8),
                                decoration: const BoxDecoration(
                                  color: primary_button,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                ),
                                child: Row(
                                  children: [
                                    const ImageIcon(
                                      size: 15,
                                      color: Colors.white,
                                      AssetImage(
                                          "lib/src/assets/icons/image_icon/dollar-symbol.png"),
                                    ),
                                    Text(
                                      event.price,
                                      style: GoogleFonts.nunito(
                                          textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          // * Event Details Section
                          EventDetailsSection(event: event),
                          const SizedBox(
                            height: 30,
                          ),
                          // * Event Details About Section
                          EventDetailsAboutSection(
                            event: event,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // * Event Details (Join Event Button) Section
              Container(
                width: screenWidth,
                margin: const EdgeInsets.only(bottom: 16),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(primary_button),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Join This Event",
                    style: GoogleFonts.nunito(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
