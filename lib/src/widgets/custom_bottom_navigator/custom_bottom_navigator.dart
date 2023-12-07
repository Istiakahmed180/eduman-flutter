import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomNavigator extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onIndexChanged;

  const CustomBottomNavigator({
    Key? key,
    required this.currentIndex,
    required this.onIndexChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (int index) {
          onIndexChanged(index);
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: neutral_text,
        selectedLabelStyle: GoogleFonts.nunito(
          textStyle: const TextStyle(fontWeight: FontWeight.w700),
        ),
        unselectedLabelStyle: GoogleFonts.nunito(
          textStyle:
              const TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
        ),
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("lib/src/assets/icons/image_icon/home.png"),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("lib/src/assets/icons/image_icon/BookBookmark.png"),
            ),
            label: 'Course',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              size: 21,
              AssetImage(
                "lib/src/assets/icons/image_icon/bottommessegeblack.png",
              ),
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("lib/src/assets/icons/image_icon/navigation-user.png"),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
