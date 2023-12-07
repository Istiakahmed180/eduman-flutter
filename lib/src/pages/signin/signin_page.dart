import 'package:eduman_flutter/src/pages/home/home.dart';
import 'package:eduman_flutter/src/pages/signin/forgot_password_page.dart';
import 'package:eduman_flutter/src/pages/signup/signup_page.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [background_linear_gradient_1, background_linear_gradient_2])),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: screenHeight * 0.02),
                    width: double.infinity,
                    height: screenHeight * 0.3,
                    child: Image.asset("lib/src/assets/signin_&_signup/sign_in.png"),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Column(
                    children: [
                      Text(
                        "Welcome Back!",
                        style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: screenWidth * 0.06),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        "Login to your existing account of online-learning",
                        style: GoogleFonts.nunito(
                            color: neutral_text, fontSize: screenWidth * 0.036, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child:                       TextFormField(
                          cursorColor: neutral_text_2,
                          style: GoogleFonts.nunito(
                            color: neutral_text,
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Enitabulligan@gmail.com",
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            prefixIcon: Container(
                              margin: const EdgeInsets.only(bottom: 2),
                              child: const ImageIcon(
                                AssetImage(
                                    "lib/src/assets/icons/image_icon/email.png"),
                                color: Colors.grey,
                              ),
                            ),
                            contentPadding:
                            const EdgeInsets.symmetric(vertical: 15.0),
                          ),
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                !value.contains('@')) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 2))
                        ]),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            // You can add additional validation for password strength here
                            return null;
                          },
                          cursorColor: neutral_text,
                          style: GoogleFonts.nunito(
                              color: neutral_text, fontWeight: FontWeight.normal, fontSize: 15),
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Password",
                            hintStyle: const TextStyle(
                              color: unactive_dot,
                            ),
                            prefixIcon: Container(
                              margin: const EdgeInsets.only(bottom: 5),
                              child: const ImageIcon(
                                AssetImage("lib/src/assets/icons/image_icon/padlock.png"),
                              ),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              icon: ColorFiltered(
                                colorFilter: const ColorFilter.mode(
                                  unactive_dot,
                                  BlendMode.srcIn,
                                ),
                                child: SvgPicture.asset(
                                  _obscureText
                                      ? 'lib/src/assets/icons/svg_icon/eye-show-svgrepo-com.svg'
                                      : 'lib/src/assets/icons/svg_icon/eye-hide-svgrepo-com.svg',
                                ),
                              ),
                            ),
                            contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPassword()));
                      },
                      child: Text(
                        "Forgot Password?",
                        style: GoogleFonts.nunito(fontSize: screenWidth * 0.035),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: screenHeight * 0.06,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Form is valid, proceed with login logic
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(primary_button),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: screenWidth * 0.08),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: GoogleFonts.nunito(
                            fontSize: screenWidth * 0.038,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Signup()));
                          },
                          child: Text(
                            "Sign up",
                            style: GoogleFonts.nunito(fontSize: screenWidth * 0.038, color: primary_button),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
