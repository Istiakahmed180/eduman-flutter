import 'package:eduman_flutter/src/model/event_model.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventDetailsSection extends StatelessWidget {
  final EventModelContent event;

  const EventDetailsSection({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      width: screenWidth,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          // * Event Details (Date) Section
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const ImageIcon(
                      size: 16,
                      color: event_text_color,
                      AssetImage(
                          "lib/src/assets/icons/image_icon/calendar.png"),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      margin: const EdgeInsets.only(top: 1),
                      child: Text(
                        "Date",
                        style: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: event_text_color,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  '${event.monthAndYear} ${event.year}',
                  style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: event_text_color,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Divider(
                color: Color(0xFFE1E2E5),
                height: 1,
                thickness: 0,
              ),
            ),
          ]),
          const SizedBox(
            height: 16,
          ),
          // * Event Details (Time) Section
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const ImageIcon(
                      size: 16.5,
                      color: event_text_color,
                      AssetImage("lib/src/assets/icons/image_icon/time.png"),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      margin: const EdgeInsets.only(top: 1),
                      child: Text(
                        "Time",
                        style: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: event_text_color,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  event.schedule,
                  style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: event_text_color,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Divider(
                color: Color(0xFFE1E2E5),
                height: 1,
                thickness: 0.5,
              ),
            ),
          ]),
          const SizedBox(
            height: 16,
          ),
          // * Event Details (Location) Section
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const ImageIcon(
                      size: 17,
                      color: event_text_color,
                      AssetImage(
                          "lib/src/assets/icons/image_icon/location.png"),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      margin: const EdgeInsets.only(top: 1),
                      child: Text(
                        "Location",
                        style: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: event_text_color,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  event.location,
                  style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: event_text_color,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Divider(
                color: Color(0xFFE1E2E5),
                height: 1,
                thickness: 0.5,
              ),
            ),
          ]),
          const SizedBox(
            height: 16,
          ),
          // * Event Details (Category) Section
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const ImageIcon(
                      size: 17,
                      color: event_text_color,
                      AssetImage(
                          "lib/src/assets/icons/image_icon/save-instagram.png"),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      margin: const EdgeInsets.only(top: 1),
                      child: Text(
                        "Category",
                        style: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: event_text_color,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  event.category,
                  style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: event_text_color,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Divider(
                color: Color(0xFFE1E2E5),
                height: 1,
                thickness: 0,
              ),
            ),
          ]),
          const SizedBox(
            height: 16,
          ),
          // * Event Details (Total Seat) Section
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const ImageIcon(
                      size: 17,
                      color: event_text_color,
                      AssetImage(
                          "lib/src/assets/icons/image_icon/armchair.png"),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      margin: const EdgeInsets.only(top: 1),
                      child: Text(
                        "Total Seat",
                        style: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: event_text_color,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  event.seat,
                  style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: event_text_color,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ])
        ],
      ),
    );
  }
}
