import 'package:eduman_flutter/src/pages/chat/chat.dart';
import 'package:eduman_flutter/src/pages/course/course.dart';
import 'package:eduman_flutter/src/pages/home/home_wrapper.dart';
import 'package:eduman_flutter/src/pages/profile/profile.dart';
import 'package:eduman_flutter/src/widgets/custom_bottom_navigator/custom_bottom_navigator.dart';
import 'package:eduman_flutter/src/widgets/custom_drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeWrapper(),
    const Course(),
    const Search(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      body: SafeArea(child: _pages[_currentIndex]),
      bottomNavigationBar: CustomBottomNavigator(
        currentIndex: _currentIndex,
        onIndexChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      drawer: const CustomDrawer(),
    );
  }
}
