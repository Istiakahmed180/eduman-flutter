import 'package:eduman_flutter/src/model/course_review_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseInformationReview extends StatelessWidget {
  const CourseInformationReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: courseReviewModel.length,
      itemBuilder: (context, index) {
        var item = courseReviewModel[index];

        return Container(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        item.image,
                        width: 60,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              style: GoogleFonts.raleway(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "On: ",
                                      style: GoogleFonts.nunito(
                                          color: const Color(0xFF818181),
                                          fontSize: 13),
                                    ),
                                    Text(
                                      item.date,
                                      style: GoogleFonts.nunito(
                                          color: const Color(0xFF575757),
                                          fontSize: 13),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 8),
                                  width: 2,
                                  height: 12,
                                  color: const Color(0xFFE1E2E5),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 8, bottom: 2.5),
                                  child: Row(
                                    children: [
                                      const ImageIcon(
                                          size: 15,
                                          color: Color(0xFFFF8D07),
                                          AssetImage(
                                              "lib/src/assets/icons/image_icon/Vector.png")),
                                      Container(
                                        margin: const EdgeInsets.only(left: 2),
                                        child: const ImageIcon(
                                            size: 15,
                                            color: Color(0xFFFF8D07),
                                            AssetImage(
                                                "lib/src/assets/icons/image_icon/Vector.png")),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 2),
                                        child: const ImageIcon(
                                            size: 15,
                                            color: Color(0xFFFF8D07),
                                            AssetImage(
                                                "lib/src/assets/icons/image_icon/Vector.png")),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 2),
                                        child: const ImageIcon(
                                            size: 15,
                                            color: Color(0xFFFF8D07),
                                            AssetImage(
                                                "lib/src/assets/icons/image_icon/Vector.png")),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 2),
                                        child: const ImageIcon(
                                            size: 15,
                                            color: Color(0xFFFF8D07),
                                            AssetImage(
                                                "lib/src/assets/icons/image_icon/Vector.png")),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const ImageIcon(
                      color: Color(0xFF818181),
                      AssetImage(
                          "lib/src/assets/icons/image_icon/thumbsub.png"))
                ],
              ),
              Container(
                  margin: const EdgeInsets.only(left: 69, top: 8, bottom: 10),
                  child: Text(
                    item.comment,
                    style: GoogleFonts.nunito(
                        fontSize: 14, color: const Color(0xFF525258)),
                  ))
            ],
          ),
        );
      },
    );
  }
}
