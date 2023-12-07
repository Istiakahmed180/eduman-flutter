import 'package:eduman_flutter/src/model/chat_message.dart';
import 'package:eduman_flutter/src/model/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatDetailScreen extends StatefulWidget {
  final ChatModelContent chat;

  const ChatDetailScreen({super.key, required this.chat});

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  String reciveMessege = 'receve';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Image(
                        image: AssetImage(
                            "lib/src/assets/icons/image_icon/back_arrow.png"),
                        height: 24,
                        width: 24,
                      )),
                  const SizedBox(width: 20),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.chat.image))),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.chat.name,
                            style: GoogleFonts.raleway(
                                textStyle: const TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w700)),
                            overflow: TextOverflow.ellipsis),
                        const SizedBox(height: 2),
                        Row(
                          children: [
                            const Image(
                              image: AssetImage(
                                  "lib/src/assets/icons/image_icon/notification.png"),
                              height: 12,
                              width: 12,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              "Online",
                              style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 53),
                  const Image(
                    image: AssetImage(
                        "lib/src/assets/icons/image_icon/callicon.png"),
                    height: 24,
                    width: 24,
                  ),
                  const SizedBox(width: 20),
                  const Image(
                    image: AssetImage(
                        "lib/src/assets/icons/image_icon/videocallicon.png"),
                    height: 24,
                    width: 24,
                  )
                ],
              ),
              const SizedBox(height: 25),
              Expanded(
                flex: 1,
                child: ListView.builder(
                  primary: true,
                  shrinkWrap: true,
                  itemCount: chatMessageModel.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (chatMessageModel[index].type == reciveMessege) {
                      return messege_first(chatMessageModel[index].message,
                          chatMessageModel[index].time);
                    } else {
                      return send_messege(chatMessageModel[index].message,
                          chatMessageModel[index].time);
                    }
                  },
                ),
              ),
              //const SizedBox(height: 235),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: 'Your message',
                            contentPadding: const EdgeInsets.only(left: 21),
                            hintStyle: GoogleFonts.raleway(
                                textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            )),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Color(0XFF23408F)),
                                borderRadius: BorderRadius.circular(15)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Color(0XFFB3B3B3)),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          cursorColor: const Color(0XFF23408F),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0XFFB3B3B3), width: 1),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Image(
                          image: AssetImage(
                              "lib/src/assets/icons/image_icon/sendicon.png"),
                          height: 24,
                          width: 24,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget messege_first(String m, String t) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          width: 250,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)),
            color: const Color(0XFF7D7D7D).withOpacity(0.07),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Center(
              child: Text(
                m,
                textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 15)),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            t,
            style: GoogleFonts.nunito(
                textStyle: const TextStyle(
                    color: Color(0XFF7D7D7D),
                    fontSize: 15,
                    fontWeight: FontWeight.w400)),
          ),
        ),
        const SizedBox(height: 22)
      ],
    );
  }

  Widget time_first(String s) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        s,
        style: GoogleFonts.nunito(
            textStyle: const TextStyle(
                color: Color(0XFF7D7D7D),
                fontSize: 15,
                fontWeight: FontWeight.w400)),
      ),
    );
  }

  Widget send_messege(String m, String t) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            width: 250,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: const Color(0XFF000000).withOpacity(0.2),
                      offset: const Offset(0, 2),
                      blurRadius: 2),
                ],
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
                color: const Color(0XFFE5ECFF)),
            child: Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Center(
                child: Text(
                  m,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.nunito(
                      textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  )),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                t,
                style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                        color: Color(0XFF7D7D7D),
                        fontSize: 15,
                        fontWeight: FontWeight.w400)),
              ),
              const SizedBox(width: 4),
              const Image(
                image:
                    AssetImage("lib/src/assets/icons/image_icon/done_all.png"),
                height: 16,
                width: 16,
              )
            ],
          ),
        ),
        const SizedBox(height: 22)
      ],
    );
  }
}
