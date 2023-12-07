import 'package:eduman_flutter/src/pages/blog/blog_wrapper/blog_wrapper.dart';
import 'package:eduman_flutter/src/widgets/custom_drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomDrawer(),
      body: SafeArea(child: BlogWrapper()),
    );
  }
}
