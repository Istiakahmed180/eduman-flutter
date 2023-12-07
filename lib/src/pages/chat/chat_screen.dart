import 'package:eduman_flutter/src/model/chat_model.dart';
import 'package:eduman_flutter/src/pages/cart/cart_wrapper.dart';
import 'package:eduman_flutter/src/pages/chat/chat_detail_screen.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:eduman_flutter/src/widgets/search_field/search_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primary_button,
        child: const Image(
          image:
              AssetImage("lib/src/assets/icons/image_icon/floatingaction.png"),
          height: 24,
          width: 24,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              background_linear_gradient_1,
              background_linear_gradient_2
            ])),
        child: Column(
          children: [
            chatHeaderSection(screenWidth, context),
            const SearchField(),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: chatModel.length,
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemBuilder: (context, index) => Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(chatModel[index].image),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 36, left: 35),
                    child: Image(
                      image: AssetImage(
                          "lib/src/assets/icons/image_icon/notification.png"),
                      height: 10,
                      width: 10,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: chatModel.length,
                  itemBuilder: ((context, index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatDetailScreen(
                                        chat: chatModel[index],
                                      )));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                          ),
                          child: Container(
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                        color: const Color(0XFF23408F)
                                            .withOpacity(0.14),
                                        offset: const Offset(-4, 5),
                                        blurRadius: 16),
                                  ],
                                  color: Colors.white),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const SizedBox(width: 10),
                                        Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      chatModel[index].image))),
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                top: 36, left: 35),
                                            child: Image(
                                              image: AssetImage(
                                                  "lib/src/assets/icons/image_icon/notification.png"),
                                              height: 10,
                                              width: 10,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 15),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              chatModel[index].name,
                                              style: GoogleFonts.raleway(
                                                  textStyle: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              )),
                                            ),
                                            const SizedBox(height: 2),
                                            Text(
                                              chatModel[index].message,
                                              style: GoogleFonts.nunito(
                                                  textStyle: const TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Color(0XFF6E758A))),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(chatModel[index].time,
                                              style: GoogleFonts.raleway(
                                                  textStyle: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                              ))),
                                          const SizedBox(height: 4),
                                          Container(
                                              height: 16,
                                              width: 16,
                                              decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0XFF23408F)),
                                              child: Center(
                                                  child: Text(
                                                      chatModel[index]
                                                          .messageCount,
                                                      style: GoogleFonts.nunito(
                                                          textStyle:
                                                              const TextStyle(
                                                                  fontSize: 9,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: Color(
                                                                      0XFFFFFFFF))))))
                                        ],
                                      ),
                                    ),
                                  ])),
                        ),
                      ))),
            ),
          ],
        ),
      ),
    );
  }

  Container chatHeaderSection(double screenWidth, BuildContext context) {
    return Container(
      width: screenWidth,
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: header_cart, width: 2),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "lib/src/assets/icons/image_icon/hamburger.png",
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
          Text(
            "Message",
            style:
                GoogleFonts.raleway(fontWeight: FontWeight.w700, fontSize: 18),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartWrapper()));
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(color: header_cart, width: 2),
                  borderRadius: BorderRadius.circular(6)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "lib/src/assets/icons/image_icon/cart.png",
                    width: 28,
                  ),
                  Positioned(
                    top: 7,
                    right: 7,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: header_cart_active,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
