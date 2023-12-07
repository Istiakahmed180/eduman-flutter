class TopCoursesContent {
  int id;
  String title;
  String duration;
  String price;
  String rating;
  String image;

  TopCoursesContent({
    required this.id,
    required this.title,
    required this.duration,
    required this.price,
    required this.rating,
    required this.image,
  });
}

List<TopCoursesContent> topCoursesModel = [
  TopCoursesContent(
    id: 1,
    title: "Top Effective Modern Design",
    duration: "17h 54m",
    price: "29.99",
    rating: "4.5",
    image:
        "lib/src/assets/popular_courses/Effective_Business_Communication.jpg",
  ),
  TopCoursesContent(
    id: 2,
    title: "Trendy Financial Planning",
    duration: "5h 30m",
    price: "39.99",
    rating: "4.6",
    image: "lib/src/assets/popular_courses/finance_main_01.jpg",
  ),
  TopCoursesContent(
    id: 3,
    title: "Data Science Fundamentals",
    duration: "5h 30m",
    price: "39.99",
    rating: "4.6",
    image: "lib/src/assets/popular_courses/data_science_main_01.jpg",
  ),
  TopCoursesContent(
    id: 4,
    title: "Arts and Design Fundamentals",
    duration: "5h 30m",
    price: "39.99",
    rating: "4.7",
    image: "lib/src/assets/popular_courses/arts_and_design_main_01.jpg",
  ),
  TopCoursesContent(
    id: 5,
    title: "Finance Fundamentals",
    duration: "5h 30m",
    price: "37.99",
    rating: "4.8",
    image: "lib/src/assets/popular_courses/development_course_02.jpg",
  ),
  TopCoursesContent(
    id: 6,
    title: "Marketing Fundamentals",
    duration: "5h 30m",
    price: "35.99",
    rating: "4.9",
    image: "lib/src/assets/popular_courses/development.jpg",
  )
];
