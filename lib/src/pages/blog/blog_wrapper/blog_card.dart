import 'package:eduman_flutter/src/model/blog_model.dart';
import 'package:eduman_flutter/src/pages/blog/blog_wrapper/blog_details.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(top: screenWidth * 0.03),
      child: Column(
        children: blogModel.map((blog) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BlogDetails(
                            blog: blog,
                          )));
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // * Blog Image Section
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BlogDetails(
                                    blog: blog,
                                  )));
                    },
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      child: Image.asset(
                        blog.image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 200,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
                  // * Blog Title Section
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BlogDetails(
                                    blog: blog,
                                  )));
                    },
                    child: Text(
                      blog.title,
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  // * Blog Description Section
                  Text(
                    _truncateDescription(blog.description, 120),
                    style: GoogleFonts.nunito(
                      color: neutral_text_2,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

String _truncateDescription(String description, int maxLength) {
  if (description.length <= maxLength) {
    return description;
  } else {
    // Find the last space within the first maxLength characters
    int lastSpaceIndex = description.lastIndexOf(' ', maxLength);

    // Return the truncated description up to the last space
    return '${description.substring(0, lastSpaceIndex)}...';
  }
}
