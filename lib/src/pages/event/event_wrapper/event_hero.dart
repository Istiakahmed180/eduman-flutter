import 'package:flutter/material.dart';

class EventHero extends StatelessWidget {
  const EventHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(top: screenHeight * 0.02),
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/src/assets/carousel/carousel_2.png"),
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
                    "Join Upcoming Design Event",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: screenWidth * 0.05,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.015),
                  Text(
                    "Jan 15, 2024",
                    style: TextStyle(
                      color: const Color.fromRGBO(255, 255, 255, 0.5),
                      fontSize: screenWidth * 0.035,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: screenHeight * 0.035),
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                          const BorderSide(
                            width: 1.5,
                            color: Color.fromRGBO(255, 255, 255, 0.5),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Colors.transparent,
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 12, right: 12, top: 2, bottom: 2),
                        child: const Text(
                          "Get Ticket",
                          style: TextStyle(
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
              "lib/src/assets/carousel/caroules_image_2.png",
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
