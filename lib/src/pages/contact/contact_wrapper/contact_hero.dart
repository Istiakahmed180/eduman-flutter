import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactHero extends StatelessWidget {
  const ContactHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 16),
            child: Image.asset("lib/src/assets/about/contact.png")),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 0.2,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFE7BD),
                        borderRadius: BorderRadius.circular(50)),
                    child: const ImageIcon(
                        color: Color(0xFFFF8505),
                        AssetImage(
                            "lib/src/assets/icons/image_icon/call_us.png")),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Call Us",
                    style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                      color: Color(0xFFFF8909),
                      fontWeight: FontWeight.bold,
                    )),
                  )
                ],
              ),
            ),
            Container(
              width: 100,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 0.2,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF98FFD5),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const ImageIcon(
                        color: Color(0xFF2CDA86),
                        AssetImage("lib/src/assets/icons/image_icon/mail.png")),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Email Us",
                    style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                      color: Color(0xFF36DC8E),
                      fontWeight: FontWeight.bold,
                    )),
                  )
                ],
              ),
            ),
            Container(
              width: 100,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 0.2,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF9C9FF),
                        borderRadius: BorderRadius.circular(50)),
                    child: const ImageIcon(
                        color: Color(0xFFDB03FF),
                        AssetImage(
                            "lib/src/assets/icons/image_icon/support.png")),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Chat",
                    style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                      color: Color(0xFFD410F6),
                      fontWeight: FontWeight.bold,
                    )),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
