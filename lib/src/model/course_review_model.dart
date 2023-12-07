class CourseReviewContent {
  final String id;
  final String name;
  final String date;
  final String comment;
  final String image;

  CourseReviewContent({
    required this.id,
    required this.name,
    required this.date,
    required this.comment,
    required this.image,
  });
}

final List<CourseReviewContent> courseReviewModel = [
  CourseReviewContent(
    id: "1",
    name: "David Warner",
    date: "Aug 11, 2023",
    comment:
        "Lorem ipsum dolor sittin amet consectetur adipiscing elit on massa mistake. Aliquam in hendrerit urna pellentes.",
    image: "lib/src/assets/mentor/review_1.png",
  ),
  CourseReviewContent(
    id: "2",
    name: "David Warner",
    date: "Aug 11, 2023",
    comment:
        "Lorem ipsum dolor sittin amet consectetur adipiscing elit on massa mistake. Aliquam in hendrerit urna pellentes.",
    image: "lib/src/assets/mentor/review_2.png",
  ),
  CourseReviewContent(
    id: "3",
    name: "David Warner",
    date: "Aug 11, 2023",
    comment:
        "Lorem ipsum dolor sittin amet consectetur adipiscing elit on massa mistake. Aliquam in hendrerit urna pellentes.",
    image: "lib/src/assets/mentor/mentor_1.png",
  ),
  CourseReviewContent(
    id: "2",
    name: "David Warner",
    date: "Aug 11, 2023",
    comment:
        "Lorem ipsum dolor sittin amet consectetur adipiscing elit on massa mistake. Aliquam in hendrerit urna pellentes.",
    image: "lib/src/assets/mentor/mentor_2.png",
  ),
  CourseReviewContent(
    id: "2",
    name: "David Warner",
    date: "Aug 11, 2023",
    comment:
        "Lorem ipsum dolor sittin amet consectetur adipiscing elit on massa mistake. Aliquam in hendrerit urna pellentes.",
    image: "lib/src/assets/mentor/mentor_3.png",
  ),
];
