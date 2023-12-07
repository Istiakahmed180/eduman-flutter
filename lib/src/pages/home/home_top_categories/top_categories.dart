import 'package:eduman_flutter/src/model/top_categories_model.dart';
import 'package:eduman_flutter/src/pages/home/home_top_categories/all_categories.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(top: screenHeight * 0.035),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Top Categories",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.045)),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AllCategories()));
                },
                child: Text(
                  "See All",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF2467EC),
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topCategoriesModel.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: screenWidth * 0.37,
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: topCategoriesModel[index].color,
                                borderRadius: BorderRadius.circular(50)),
                            width: screenWidth * 0.15,
                            height: screenWidth * 0.15,
                            padding: const EdgeInsets.all(13),
                            child: Image.asset(
                              topCategoriesModel[index].image,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            topCategoriesModel[index].category,
                            style: GoogleFonts.raleway(
                                textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            )),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "${topCategoriesModel[index].courseCount} Courses",
                            style: GoogleFonts.nunito(
                                textStyle: const TextStyle(
                                    color: neutral_text,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
