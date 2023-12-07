import 'package:eduman_flutter/src/pages/chat/chat_screen.dart';
import 'package:eduman_flutter/src/widgets/custom_drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomDrawer(),
      body: ChatScreen(),
    );
  }
}
