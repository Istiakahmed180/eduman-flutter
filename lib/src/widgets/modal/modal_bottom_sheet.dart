import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModalBottomSheet extends StatefulWidget {
  const ModalBottomSheet({Key? key}) : super(key: key);

  @override
  State<ModalBottomSheet> createState() => _ModalBottomSheetState();
}

class _ModalBottomSheetState extends State<ModalBottomSheet> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              background_linear_gradient_1,
              background_linear_gradient_2
            ])),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Center(
              child: Container(
                height: 4,
                width: 0.5, // Adjusted width
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0XFF12121D),
                ),
              ),
            ),
            const SizedBox(height: 9),
            Text(
              "Add Card",
              style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                fontSize: 18,
                color: Color(0XFF000000),
              )),
            ),
            const SizedBox(height: 20),
            cardNameField('Name On Card',
                'lib/src/assets/icons/image_icon/profileicon1st.png'),
            const SizedBox(height: 20),
            cardNameField(
                'Card Number', 'lib/src/assets/icons/image_icon/numberbox.png'),
            const SizedBox(height: 20),
            Row(
              children: [
                dateAndCvvField('MM/YY'),
                const SizedBox(width: 20),
                dateAndCvvField('CVV'),
              ],
            ),
            const SizedBox(height: 20.5),
            saveCardCheckbox(),
            const SizedBox(height: 21),
            addButton(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget cardNameField(String label, String iconPath) {
    return Container(
      height: 60,
      width: double.infinity,
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
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: label,
            contentPadding: const EdgeInsets.only(top: 19, bottom: 14),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(7.0),
              child: SizedBox(
                height: 24,
                width: 24,
                child: Image(
                  image: AssetImage(iconPath),
                  height: 24,
                  width: 24,
                ),
              ),
            ),
            border: InputBorder.none,
          ),
          style: GoogleFonts.raleway(
              textStyle: const TextStyle(
            fontSize: 15,
            color: Color(0XFF6E758A),
            fontWeight: FontWeight.w600,
          )),
        ),
      ),
    );
  }

  Widget dateAndCvvField(String label) {
    return Expanded(
      child: Container(
        height: 60,
        width: double.infinity,
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
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(
              hintText: label,
              contentPadding:
                  const EdgeInsets.only(left: 18, top: 18, bottom: 14),
              border: InputBorder.none,
            ),
            style: GoogleFonts.raleway(
                textStyle: const TextStyle(
              fontSize: 15,
              color: Color(0XFF6E758A),
              fontWeight: FontWeight.w600,
            )),
          ),
        ),
      ),
    );
  }

  Widget saveCardCheckbox() {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          activeColor: const Color(0XFF23408F),
          side: const BorderSide(color: Color(0XFFDEDEDE)),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        const SizedBox(width: 10),
        Text(
          "Save Card",
          style: GoogleFonts.raleway(
              textStyle: const TextStyle(
            color: Color(0XFF000000),
            fontSize: 15,
          )),
        )
      ],
    );
  }

  Widget addButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: isChecked ? const Color(0XFF23408F) : Colors.grey,
        minimumSize: const Size(374, 56),
      ),
      child: Text(
        "Add",
        style: GoogleFonts.raleway(
            textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        )),
      ),
    );
  }
}
