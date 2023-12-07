import 'package:eduman_flutter/src/pages/cart/cart_card.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartWrapper extends StatelessWidget {
  const CartWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 10,
            backgroundColor: background_linear_gradient_1,
            iconTheme: const IconThemeData(color: Colors.black),
            title: Text(
              "Cart",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold, color: Colors.black),
            )),
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
          child: ListView(
            children: const [
              SizedBox(
                height: 16,
              ),
              // * Cart Card Section
              CartCard()
            ],
          ),
        )));
  }
}
