import 'package:eduman_flutter/src/pages/contact/contact_wrapper/contact_form.dart';
import 'package:eduman_flutter/src/pages/contact/contact_wrapper/contact_header.dart';
import 'package:eduman_flutter/src/pages/contact/contact_wrapper/contact_hero.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';

class ContactWrapper extends StatelessWidget {
  const ContactWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            background_linear_gradient_1,
            background_linear_gradient_2
          ])),
      child: ListView(children: const [
        // * Contact Header Section
        ContactHeader(),
        // * Contact Hero Section
        ContactHero(),
        // * Contact Form Section
        ContactForm()
      ]),
    );
  }
}
