import 'package:eduman_flutter/src/pages/signin/signin_page.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final otpkey = GlobalKey<FormState>();
  TextEditingController otpController = TextEditingController();
  String? otp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
              backbutton(context),
              Center(
                child: Text(
                  "Verification",
                  style: GoogleFonts.raleway(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      color: Color(0XFF000000),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "We sent to the 99*******5",
                        style: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                            color: Color(0XFF000000),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 20),
                    otpformat(),
                    const SizedBox(height: 30),
                    ConfirmButton(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: resend_otp_button(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget backbutton(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Container(
          margin: const EdgeInsets.only(right: 12),
          child: const Image(
            image: AssetImage("lib/src/assets/icons/image_icon/back_arrow.png"),
            height: 24,
            width: 24,
          ),
        ));
  }

  Widget otpformat() {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Form(
        key: otpkey,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: OtpTextField(
            numberOfFields: 4,
            borderColor: const Color(0xFFDEDEDE),
            showFieldAsBox: true,
            borderRadius: BorderRadius.circular(12),
            borderWidth: 1,
            focusedBorderColor: const Color(0XFF23408F),
            fieldWidth: 70,
            onSubmit: (value) {
              setState(() {
                otp = value;
              });
            },
          ),
        ),
      ),
    );
  }

  Widget resend_otp_button() {
    return Center(
      child: RichText(
        text: TextSpan(
          text: 'Don’t receive code?',
          style: GoogleFonts.nunito(
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          children: [
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  _showResendConfirmationDialog();
                },
              text: ' Resend',
              style: GoogleFonts.raleway(
                textStyle: const TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _showResendConfirmationDialog() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Resend OTP',
            style: GoogleFonts.raleway(
                textStyle: const TextStyle(
              fontWeight: FontWeight.w600,
            )),
          ),
          content: Text(
            'Do you want to resend the OTP?',
            style: GoogleFonts.nunito(),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Implement logic to resend OTP
                Navigator.of(context).pop();
              },
              child: const Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('No'),
            ),
          ],
        );
      },
    );
  }

  Widget ConfirmButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          backgroundColor: MaterialStateProperty.all(primary_button),
          fixedSize: MaterialStateProperty.all<Size>(
            const Size(200.0, 50.0),
          ),
        ),
        onPressed: () {
          if (otpkey.currentState?.validate() ?? false) {
            if (otp == null) {
              showSnackBar(context);
            } else {
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  backgroundColor: const Color(0XFFFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  actions: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                        child: Column(
                          children: [
                            const Image(
                              image: AssetImage(
                                  "lib/src/assets/icons/image_icon/User_Approved.png"),
                              height: 80,
                              width: 70,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "Sucessful !",
                              style: GoogleFonts.raleway(
                                  textStyle: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const SizedBox(height: 14),
                            Text(
                              "Your account created has been successfully ! ",
                              style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 20),
                            ok_button(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }
          }
        },
        child: Text(
          'Confirm',
          style: GoogleFonts.raleway(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18)),
        ),
      ),
    );
  }

  void showSnackBar(context) {
    showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.error(
        message: "Please enter the OTP!",
        textStyle: GoogleFonts.nunito(
            textStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16)),
        backgroundColor: background_linear_gradient_1.withOpacity(0.8),
      ),
    );
  }

  Widget ok_button() {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Signin()));
        },
        child: Container(
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0XFF23408F),
          ),
          child: Center(
            child: Text("Ok",
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
