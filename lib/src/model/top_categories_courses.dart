class CourseContent {
  int id;
  String title;
  String rating;
  String studentCount;
  String lessonCount;
  String instructorName;
  String courseImage;
  String studentImageOne;
  String studentImageTwo;
  String studentImageThree;

  CourseContent(
      {required this.id,
      required this.title,
      required this.rating,
      required this.studentCount,
      required this.lessonCount,
      required this.instructorName,
      required this.courseImage,
      required this.studentImageOne,
      required this.studentImageTwo,
      required this.studentImageThree});
}

List<CourseContent> courseModel = [
  CourseContent(
      id: 1,
      title: "Effective Business",
      rating: "4.7",
      studentCount: "80",
      lessonCount: "12",
      instructorName: "Emily",
      courseImage: "lib/src/assets/all_course/01.jpg",
      studentImageOne: "lib/src/assets/mentor/mentor_1.png",
      studentImageTwo: "lib/src/assets/mentor/mentor_2.png",
      studentImageThree: "lib/src/assets/mentor/mentor_3.png"),
  CourseContent(
      id: 2,
      title: "Financial Planning",
      rating: "4.6",
      studentCount: "30",
      lessonCount: "18",
      instructorName: "John",
      courseImage: "lib/src/assets/all_course/02.jpg",
      studentImageOne: "lib/src/assets/mentor/mentor_1.png",
      studentImageTwo: "lib/src/assets/mentor/mentor_2.png",
      studentImageThree: "lib/src/assets/mentor/mentor_3.png"),
  CourseContent(
      id: 3,
      title: "Project Management",
      rating: "4.5",
      studentCount: "25",
      lessonCount: "10",
      instructorName: "Laura",
      courseImage: "lib/src/assets/all_course/03.jpg",
      studentImageOne: "lib/src/assets/mentor/mentor_1.png",
      studentImageTwo: "lib/src/assets/mentor/mentor_2.png",
      studentImageThree: "lib/src/assets/mentor/mentor_3.png"),
  CourseContent(
      id: 4,
      title: "Digital Marketing",
      rating: "4.4",
      studentCount: "32",
      lessonCount: "14",
      instructorName: "David",
      courseImage: "lib/src/assets/all_course/04.jpg",
      studentImageOne: "lib/src/assets/mentor/mentor_1.png",
      studentImageTwo: "lib/src/assets/mentor/mentor_2.png",
      studentImageThree: "lib/src/assets/mentor/mentor_3.png"),
];
