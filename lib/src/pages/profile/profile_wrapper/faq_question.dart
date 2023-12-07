import 'package:eduman_flutter/src/model/faq_question.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FaqQuestion extends StatefulWidget {
  const FaqQuestion({Key? key}) : super(key: key);

  @override
  State<FaqQuestion> createState() => _FaqQuestionState();
}

class _FaqQuestionState extends State<FaqQuestion> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: faqQuestionModel.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0XFF23408F).withOpacity(0.2),
                      offset: const Offset(0, 2),
                      blurRadius: 8,
                    )
                  ],
                ),
                child: ExpansionTileCard(
                  borderRadius: BorderRadius.circular(22),
                  trailing: Image.asset(
                    "lib/src/assets/icons/image_icon/down.png",
                    height: 24,
                    width: 24,
                  ),
                  animateTrailing: true,
                  title: Text(
                    faqQuestionModel[index].answer,
                    style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                      color: Color(0XFF000000),
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    )),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      child: Text(
                        faqQuestionModel[index].question,
                        style: GoogleFonts.nunito(
                            textStyle: const TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
