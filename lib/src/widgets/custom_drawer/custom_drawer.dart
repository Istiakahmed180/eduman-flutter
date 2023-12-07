import 'package:eduman_flutter/src/pages/about/about.dart';
import 'package:eduman_flutter/src/pages/blog/blog.dart';
import 'package:eduman_flutter/src/pages/contact/contact.dart';
import 'package:eduman_flutter/src/pages/event/event.dart';
import 'package:eduman_flutter/src/pages/home/home.dart';
import 'package:eduman_flutter/src/pages/signin/signin_page.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  String currentPage = 'Home';

  void navigateToPage(String pageName) {
    setState(() {
      currentPage = pageName;
    });
    Navigator.pop(context);
    switch (pageName) {
      case 'Home':
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Home()));
        break;
      case 'About':
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const About()));
        break;
      case "Blogs":
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Blog()));
        break;
      case "Events":
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Event()));
        break;
      case "Contact":
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Contact()));
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
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
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Color(0xFF4C66ED)),
              accountName: Text(
                "Enita Bulligan",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              accountEmail: Text(
                "EnitaBulligan@gmail.com",
                style: GoogleFonts.nunito(color: const Color(0xFFC9CBD4)),
              ),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage("lib/src/assets/avater/user.png"),
              ),
            ),
            buildListTile('Home', 'home.png'),
            buildListTile('About', 'about.png'),
            buildListTile('Blogs', 'blogging.png'),
            buildListTile('Events', 'calendar-check.png'),
            buildListTile('Contact', 'contact-book.png'),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Signin()));
              },
              title: Text(
                "Sign Out",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w600, fontSize: 15),
              ),
              horizontalTitleGap: 5,
              leading: Container(
                margin: const EdgeInsets.only(left: 2),
                child: const ImageIcon(
                  color: Colors.black,
                  size: 20,
                  AssetImage("lib/src/assets/icons/image_icon/log-out.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile buildListTile(String pageName, String iconName) {
    return ListTile(
      onTap: () => navigateToPage(pageName),
      title: Text(
        pageName,
        style: GoogleFonts.raleway(
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: currentPage == pageName ? primary_button : Colors.black,
        ),
      ),
      tileColor: currentPage == pageName
          ? const Color(0xFFCDE1FA).withOpacity(1)
          : null,
      horizontalTitleGap: 5,
      leading: ImageIcon(
        color: currentPage == pageName ? primary_button : Colors.black,
        size: 20,
        AssetImage("lib/src/assets/icons/image_icon/$iconName"),
      ),
    );
  }
}
