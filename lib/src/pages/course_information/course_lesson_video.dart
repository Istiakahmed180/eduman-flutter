import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CourseLessonVideo extends StatefulWidget {
  const CourseLessonVideo({Key? key}) : super(key: key);

  @override
  CourseLessonVideoState createState() => CourseLessonVideoState();
}

class CourseLessonVideoState extends State<CourseLessonVideo> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: 'HsWYxfVzX_U',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: background_linear_gradient_1,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          "Lesson Video",
          style: GoogleFonts.raleway(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: screenWidth,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  background_linear_gradient_1,
                  background_linear_gradient_2
                ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: YoutubePlayerBuilder(
                    player: YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.blueAccent,
                      onReady: () {},
                    ),
                    builder: (context, player) {
                      return Scaffold(
                        body: player,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    "Advantages of Online Learning",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    "Students can attend a course at any time, from any where. This means that parents can attend to their children, and then sit down to class; working students can attend classes no matter what their work schedule might be, folk that travels for business or pleasure can attend classroom anywhere in the world that has internet access. Online learning enables student-centered teaching approaches. Every student has their own way of learning that works best for them. Some learn visually, others learn better when they learn by doing. Online instructors come with practical knowledge and may be from any location across the globe.",
                    style: GoogleFonts.nunito(
                      textStyle: const TextStyle(
                          color: neutral_text_2,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    textAlign: TextAlign.justify, // Justify the text
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
