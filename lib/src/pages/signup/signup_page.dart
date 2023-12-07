import 'package:eduman_flutter/src/pages/signin/signin_page.dart';
import 'package:eduman_flutter/src/pages/signup/sign_up_phone_number.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
          child: Form(
            key: _formKey,
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
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
                children: [
                  Container(
                    margin: EdgeInsets.only(top: screenHeight * 0.02),
                    width: double.infinity,
                    height: screenHeight * 0.3,
                    child: Image.asset(
                        "lib/src/assets/signin_&_signup/signup.png"),
                  ),
                  SizedBox(
                    height: screenHeight * 0.001,
                  ),
                  Column(
                    children: [
                      Text(
                        "Lets get started!",
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.06,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        "Create an account to online-learning to get all features",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: screenWidth * 0.036,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Column(
                    children: [
                      TextFormField(
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
                          hintText: "Enita Bulligan",
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          prefixIcon: Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            child: const ImageIcon(
                              AssetImage(
                                  "lib/src/assets/icons/image_icon/user.png"),
                              color: Colors.grey,
                            ),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 15.0),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
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
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
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
                          hintText: "Enitabulligan123",
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          prefixIcon: Container(
                            margin: const EdgeInsets.only(bottom: 2),
                            child: const ImageIcon(
                              AssetImage(
                                  "lib/src/assets/icons/image_icon/id-card.png"),
                              color: Colors.grey,
                            ),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 15.0),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a valid ID';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        cursorColor: neutral_text_2,
                        style: GoogleFonts.nunito(
                          color: neutral_text,
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
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
                            color: Colors.grey,
                          ),
                          prefixIcon: Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            child: const ImageIcon(
                              AssetImage(
                                  "lib/src/assets/icons/image_icon/padlock.png"),
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
                                Colors.grey,
                                BlendMode.srcIn,
                              ),
                              child: SvgPicture.asset(
                                _obscureText
                                    ? 'lib/src/assets/icons/svg_icon/eye-show-svgrepo-com.svg'
                                    : 'lib/src/assets/icons/svg_icon/eye-hide-svgrepo-com.svg',
                              ),
                            ),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 15.0),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a valid password';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: screenHeight * 0.06,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          // Validation passed, handle sign up logic here
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpPhoneNumber(),
                            ),
                          );
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(primary_button),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(top: screenWidth * 0.08, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: GoogleFonts.nunito(
                            fontSize: screenWidth * 0.038,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Signin(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign in",
                            style: GoogleFonts.nunito(
                              fontSize: screenWidth * 0.038,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
