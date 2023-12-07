import 'package:eduman_flutter/src/pages/signin/reset_password.dart';
import 'package:eduman_flutter/src/pages/signin/signin_page.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
              const SizedBox(
                height: 16,
              ),
              backbutton(context),
              Center(
                child: Text(
                  "Forgot Password",
                  style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                          fontSize: 24,
                          color: Color(0XFF000000),
                          fontWeight: FontWeight.w700)),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Enter your registered phone number to reset password.",
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                                  color: Color(0XFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(height: 54),
                    phone_number_field(),
                    const SizedBox(height: 30),
                    submitbutton(context),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: back_login_button(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget submitbutton(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ResetPassword()));
        },
        child: Container(
          height: 56,
          width: 374,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: primary_button,
          ),
          child: Center(
            child: Text("Submit",
                style: GoogleFonts.raleway(
                    textStyle: const TextStyle(
                  color: Color(0XFFFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ))),
          ),
        ),
      ),
    );
  }

  Widget back_login_button(BuildContext context) {
    return Center(
      child: RichText(
          text: TextSpan(
              text: 'Back to signin?',
              style: GoogleFonts.nunito(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400)),
              children: [
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Signin()));
                },
              text: ' Sign In',
              style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                      color: primary_button,
                      fontSize: 15,
                      fontWeight: FontWeight.w700)),
            )
          ])),
    );
  }

  Widget phone_number_field() {
    return IntlPhoneField(
      decoration: InputDecoration(
          labelText: 'Phone Number',
          labelStyle: GoogleFonts.raleway(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: Color(0XFF9B9B9B))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0XFFDEDEDE), width: 1)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0XFF23408F), width: 1)),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0XFFDEDEDE), width: 1),
            borderRadius: BorderRadius.circular(12),
          )),
      initialCountryCode: 'BD',
      onChanged: (phone) {},
    );
  }

  Widget backbutton(BuildContext context) {
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
}
