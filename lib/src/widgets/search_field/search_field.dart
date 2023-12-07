import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          // Search Input Field
          Expanded(
            flex: 7,
            child: TextField(
              cursorColor: search_input_hint,
              style: GoogleFonts.nunito(
                color: neutral_text,
                fontWeight: FontWeight.normal,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: "Search",
                hintStyle: GoogleFonts.nunito(
                  textStyle: const TextStyle(
                    color: search_input_hint,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                prefixIcon: Container(
                  padding: const EdgeInsets.all(6),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: primary_button,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      const Positioned(
                          child: ImageIcon(
                              color: Colors.white,
                              size: 20,
                              AssetImage(
                                  "lib/src/assets/icons/image_icon/search.png")))
                    ],
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
              ),
            ),
          ),
          const SizedBox(width: 8),
          // Search Filter Icon
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const ImageIcon(
                  color: neutral_text,
                  AssetImage("lib/src/assets/icons/image_icon/equalizer.png")),
            ),
          ),
        ],
      ),
    );
  }
}
