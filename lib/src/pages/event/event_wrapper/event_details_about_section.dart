import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eduman_flutter/src/model/event_model.dart';

class EventDetailsAboutSection extends StatefulWidget {
  final EventModelContent event;

  const EventDetailsAboutSection({Key? key, required this.event})
      : super(key: key);

  @override
  EventDetailsAboutSectionState createState() =>
      EventDetailsAboutSectionState();
}

class EventDetailsAboutSectionState extends State<EventDetailsAboutSection> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    String introduction = widget.event.introduction;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About Event",
          style: GoogleFonts.raleway(
              textStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ),
        const SizedBox(
          height: 16,
        ),
        isExpanded
            ? Text(
                introduction,
                style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                        fontSize: 15.5, color: Color(0xFF525258)),
                    height: 1.5),
                textAlign: TextAlign.justify,
              )
            : Text(
                introduction.length > 200
                    ? introduction.substring(0, 200)
                    : introduction,
                style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                        fontSize: 15.5, color: Color(0xFF525258)),
                    height: 1.5),
                textAlign: TextAlign.justify,
              ),
        const SizedBox(
          height: 16,
        ),
        introduction.length > 200
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Text(
                  isExpanded ? "Show Less -" : "Show More +",
                  style: GoogleFonts.nunito(
                      textStyle: const TextStyle(
                    color: primary_button,
                    fontWeight: FontWeight.bold,
                  )),
                ),
              )
            : const SizedBox(),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}
