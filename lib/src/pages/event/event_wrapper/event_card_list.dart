import 'package:eduman_flutter/src/model/event_model.dart';
import 'package:eduman_flutter/src/pages/event/event_wrapper/event_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventCardList extends StatelessWidget {
  const EventCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(top: screenWidth * 0.008),
      child: Column(
        children: eventModel.map((event) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EventDetails(
                            event: event,
                          )));
            },
            child: Container(
              margin: const EdgeInsets.only(top: 16),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: screenWidth * 0.25,
                    height: screenWidth * 0.25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        event.eventImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event.title,
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 215,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 80,
                              child: Stack(
                                children: [
                                  SizedBox(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Image.asset(
                                        event.mentorImageOne,
                                        width: 30,
                                      ),
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
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Image.asset(
                                        event.mentorImageTwo,
                                        width: 30,
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
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Image.asset(
                                        event.mentorImageThree,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '${event.audience}+ Going',
                                  style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Color(0xFFFFB800),
                                  size: 18,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 2),
                                  child: Text(
                                    event.rating,
                                    style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 2),
                                  child: Text(
                                    '(${event.seat})',
                                    style: GoogleFonts.nunito(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,
                                          fontSize: 13),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              const ImageIcon(
                                size: 14,
                                color: Color(0xFF808080),
                                AssetImage(
                                  "lib/src/assets/icons/image_icon/calendar.png",
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 2),
                                child: Text(
                                  event.monthAndYear,
                                  style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF808080),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: screenWidth * 0.04,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 2),
                                child: const ImageIcon(
                                  size: 15,
                                  color: Color(0xFF808080),
                                  AssetImage(
                                      "lib/src/assets/icons/image_icon/location.png"),
                                ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 2),
                                child: Text(
                                  event.location,
                                  style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF808080),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
