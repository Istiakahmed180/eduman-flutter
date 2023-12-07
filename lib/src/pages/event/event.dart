import 'package:eduman_flutter/src/pages/event/event_wrapper/event_wrapper.dart';
import 'package:eduman_flutter/src/widgets/custom_drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        drawer: CustomDrawer(), body: SafeArea(child: EventWrapper()));
  }
}
