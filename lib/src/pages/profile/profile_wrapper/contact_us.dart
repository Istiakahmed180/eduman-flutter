import 'package:eduman_flutter/src/model/contact_us_model.dart';
import 'package:eduman_flutter/src/pages/contact/contact.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contactUsModel.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Contact()));
          },
          child: Padding(
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 8,
            ),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0XFF23408F).withOpacity(0.14),
                    offset: const Offset(-4, 5),
                    blurRadius: 16,
                  ),
                ],
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(contactUsModel[index].contactIcon),
                      height: 24,
                      width: 24,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      contactUsModel[index].contactTitle,
                      style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
