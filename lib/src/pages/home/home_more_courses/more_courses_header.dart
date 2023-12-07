import 'package:eduman_flutter/src/pages/cart/cart_wrapper.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreCoursesHeader extends StatelessWidget {
  const MoreCoursesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: header_cart, width: 2),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "lib/src/assets/icons/image_icon/left-arrow.png",
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
          Text(
            "More Courses",
            style:
                GoogleFonts.raleway(fontWeight: FontWeight.w700, fontSize: 18),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartWrapper()));
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(color: header_cart, width: 2),
                  borderRadius: BorderRadius.circular(6)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "lib/src/assets/icons/image_icon/cart.png",
                    width: 28,
                  ),
                  Positioned(
                    top: 7,
                    right: 7,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: header_cart_active,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
