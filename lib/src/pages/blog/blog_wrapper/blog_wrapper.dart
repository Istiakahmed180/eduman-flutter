import 'package:eduman_flutter/src/pages/blog/blog_wrapper/blog_card.dart';
import 'package:eduman_flutter/src/pages/blog/blog_wrapper/blog_header.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';

class BlogWrapper extends StatelessWidget {
  const BlogWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
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
          // * Blog Header Section
          BlogHeader(),
          // * Blog Card Section
          BlogCard()
        ],
      ),
    );
  }
}
