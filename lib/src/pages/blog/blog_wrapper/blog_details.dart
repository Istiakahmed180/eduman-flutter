import 'package:eduman_flutter/src/model/blog_model.dart';
import 'package:eduman_flutter/src/pages/blog/blog_wrapper/blog_details_header.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogDetails extends StatelessWidget {
  final BlogModelContent blog;

  const BlogDetails({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      // * Blog Details Main Container
      body: SafeArea(
        child: Container(
          width: screenWidth,
          padding: const EdgeInsets.only(left: 16, right: 16),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                background_linear_gradient_1,
                background_linear_gradient_2
              ])),
          // * Blog Details Body Seciton
          child: ListView(
            children: [
              // * Blog Details Header Section
              const BlogDetailsHeader(),
              // * Blog Details Section
              Container(
                margin: EdgeInsets.only(top: screenHeight * 0.02),
                child: Column(
                  children: [
                    // * Blog Details Image Section
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        blog.image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: screenHeight * 0.25,
                      ),
                    ),

                    const SizedBox(
                      height: 16,
                    ),
                    // * Blog Details Title Section
                    Text(
                      blog.title,
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    // * Date And Blogger Name Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            // * Date Section
                            const ImageIcon(
                                color: neutral_text_2,
                                size: 15,
                                AssetImage(
                                  "lib/src/assets/icons/image_icon/blog_calender.png",
                                )),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 1),
                              child: Text(
                                blog.blogPostDate,
                                style: GoogleFonts.nunito(
                                    color: neutral_text_2,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                        // * Blogger Name Section
                        Row(
                          children: [
                            const ImageIcon(
                                color: neutral_text_2,
                                size: 17,
                                AssetImage(
                                    "lib/src/assets/icons/image_icon/blog_user.png")),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 1.5),
                              child: Text(
                                blog.bloggerName,
                                style: GoogleFonts.nunito(
                                    color: neutral_text_2,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    // * Blog Description Section
                    Text(
                      (blog.description),
                      style: GoogleFonts.nunito(
                        color: neutral_text_2,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
