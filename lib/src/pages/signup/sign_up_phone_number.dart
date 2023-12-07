import 'package:eduman_flutter/src/pages/signup/verification.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpPhoneNumber extends StatefulWidget {
  const SignUpPhoneNumber({super.key});

  @override
  State<SignUpPhoneNumber> createState() => _SignUpPhoneNumberState();
}

class _SignUpPhoneNumberState extends State<SignUpPhoneNumber> {
  final phoneNumberkey = GlobalKey<FormState>();
  TextEditingController phoneNumberCheakController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                background_linear_gradient_1,
                background_linear_gradient_2
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              backbutton(),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  "Enter your phone number",
                  style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                          fontSize: 24,
                          color: Color(0XFF000000),
                          fontWeight: FontWeight.bold)),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 55, right: 55),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "You will receive 4 digits number to verified number",
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                      color: Color(0XFF000000),
                      fontSize: 15,
                    )),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 22),
              phone_number_field(),
              const SizedBox(height: 30),
              Continuebutton(),
              const SizedBox(height: 100),
              //back_login_button(),
            ],
          ),
        ),
      ),
    );
  }

  Widget backbutton() {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Image(
        image: AssetImage("lib/src/assets/icons/image_icon/back_arrow.png"),
        height: 24,
        width: 24,
      ),
    );
  }

  Widget phone_number_field() {
    return Form(
      key: phoneNumberkey,
      child: IntlPhoneField(
        dropdownIconPosition: IconPosition.trailing,
        dropdownIcon: const Icon(
          Icons.keyboard_arrow_down_outlined,
          color: Color(0XFF000000),
        ),
        flagsButtonPadding: const EdgeInsets.only(left: 16),
        controller: phoneNumberCheakController,
        decoration: InputDecoration(
            labelText: 'Phone Number',
            labelStyle: GoogleFonts.raleway(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Color(0XFF9B9B9B))),
            border: const OutlineInputBorder(
              borderSide: BorderSide(),
            ),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.red, width: 1)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(color: Color(0XFF23408F), width: 1)),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0XFFDEDEDE), width: 1),
              borderRadius: BorderRadius.circular(12),
            )),
        initialCountryCode: 'BD',
        onChanged: (phone) {},
        validator: (val) {
          if (val!.toString().isEmpty) return 'Please enter the mobile number';
          return null;
        },
      ),
    );
  }

  Widget Continuebutton() {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (phoneNumberkey.currentState!.validate()) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Verification()));
          }
        },
        child: Container(
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: primary_button,
          ),
          child: Center(
            child: Text("Continue",
                style: GoogleFonts.raleway(
                    textStyle: const TextStyle(
                  color: Color(0XFFFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))),
          ),
        ),
      ),
    );
  }
}
