import 'package:eduman_flutter/src/model/course_categories_slider_model.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseCategoriesSlider extends StatefulWidget {
  const CourseCategoriesSlider({Key? key}) : super(key: key);

  @override
  CourseCategoriesSliderState createState() => CourseCategoriesSliderState();
}

class CourseCategoriesSliderState extends State<CourseCategoriesSlider> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(top: screenHeight * 0.02),
      height: 38,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: courseCategoiresSliderModel.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.only(right: 8),
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? const Color.fromRGBO(36, 103, 236, 0.15)
                    : Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  courseCategoiresSliderModel[index].category,
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      color: selectedIndex == index
                          ? primary_button
                          : neutral_text,
                      fontWeight: selectedIndex == index
                          ? FontWeight.w600
                          : FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
