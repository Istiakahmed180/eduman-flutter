import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eduman_flutter/src/pages/signin/signin_page.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool ispassHidden = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                background_linear_gradient_1,
                background_linear_gradient_2
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              back_button(),
              Center(
                child: Text(
                  "Reset Password",
                  style: GoogleFonts.raleway(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      color: Color(0XFF000000),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: Form(
                  key: _formKey,
                  child: ListView(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Enter a password different from the previous passwords.",
                          style: GoogleFonts.nunito(
                            textStyle: const TextStyle(
                              color: Color(0XFF000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      passwordTextField('Password', _passwordController),
                      const SizedBox(height: 20),
                      passwordTextField(
                          'Confirm password', _confirmPasswordController),
                      const SizedBox(height: 30),
                      doneButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  toggle() {
    setState(() {
      ispassHidden = !ispassHidden;
    });
  }

  Widget passwordTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: TextFormField(
        controller: controller,
        obscureText: ispassHidden,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $label';
          }
          if (label == 'Confirm password' &&
              value != _passwordController.text) {
            return 'Passwords do not match';
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: label,
          hintStyle: GoogleFonts.raleway(
            textStyle: const TextStyle(
              fontSize: 15,
              color: Color(0XFF9B9B9B),
              fontWeight: FontWeight.bold,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          fillColor: const Color(0xFFF5F5F5),
          contentPadding: const EdgeInsets.only(left: 20),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0XFF23408F), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0XFFDEDEDE), width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          suffixIcon: ispassHidden
              ? GestureDetector(
                  onTap: () => toggle(),
                  child: const Image(
                    image: AssetImage(
                        "lib/src/assets/icons/image_icon/visible_eye.png"),
                    height: 20,
                    width: 20,
                  ),
                )
              : GestureDetector(
                  onTap: () => toggle(),
                  child: const Image(
                    image: AssetImage(
                        "lib/src/assets/icons/image_icon/visible_eye.png"),
                    height: 20,
                    width: 20,
                  ),
                ),
        ),
      ),
    );
  }

  Widget back_button() {
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
      ),
    );
  }

  Widget doneButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Center(
        child: GestureDetector(
          onTap: () {
            if (_formKey.currentState!.validate()) {
              // Form is valid, proceed with your logic here...
              showSuccessDialog();
            }
          },
          child: Container(
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: primary_button,
            ),
            child: Center(
              child: Text(
                "Done",
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget okButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Signin()));
          },
          child: Container(
            height: 56,
            width: 334,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF23408F),
            ),
            child: Center(
              child: Text(
                "Ok",
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showSuccessDialog() {
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
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Image(
                    image: AssetImage(
                        "lib/src/assets/icons/image_icon/Privacy2.png"),
                    height: 88.13,
                    width: 76.33,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Changed !",
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    child: Text(
                      "Your password has been changed successfully!",
                      style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  okButton(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
