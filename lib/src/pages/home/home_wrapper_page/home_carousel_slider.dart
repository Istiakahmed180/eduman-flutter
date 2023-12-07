import 'package:carousel_slider/carousel_slider.dart';
import 'package:eduman_flutter/src/model/carousel_model.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';

class HomeCarouselSlider extends StatefulWidget {
  const HomeCarouselSlider({Key? key}) : super(key: key);

  @override
  State<HomeCarouselSlider> createState() => _HomeCarouselSliderState();
}

class _HomeCarouselSliderState extends State<HomeCarouselSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(top: screenHeight * 0.02),
      child: Column(
        children: [
          CarouselSlider(
            items: carouselList.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(item.backgroundImg),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(left: screenWidth * 0.04),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  item.title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: screenWidth * 0.05,
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.015),
                                Text(
                                  item.subline,
                                  style: TextStyle(
                                    color: const Color.fromRGBO(
                                        255, 255, 255, 0.5),
                                    fontSize: screenWidth * 0.035,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: screenHeight * 0.035),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      side: MaterialStateProperty.all(
                                        const BorderSide(
                                          width: 1.5,
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.5),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.transparent,
                                      ),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 12,
                                          right: 12,
                                          top: 2,
                                          bottom: 2),
                                      child: Text(
                                        item.button,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            item.image,
                            width: double.infinity,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: 202,
              aspectRatio: 16 / 9,
              viewportFraction: 1.0,
              initialPage: 0,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: carouselList.asMap().entries.map((entry) {
              return Container(
                width: 9.0,
                height: 9.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == entry.key
                      ? primary_button
                      : const Color(0xFFC6C7CC),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
