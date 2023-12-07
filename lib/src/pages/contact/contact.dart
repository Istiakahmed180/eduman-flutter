import 'package:eduman_flutter/src/pages/contact/contact_wrapper/contact_wrapper.dart';
import 'package:eduman_flutter/src/widgets/custom_drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomDrawer(),
      body: SafeArea(child: ContactWrapper()),
    );
  }
}
