class MoreCoursesContent {
  int id;
  String title;
  String rating;
  String student;
  String date;
  String address;
  String image;
  String mentorImageOne;
  String mentorImageTwo;
  String mentorImageThree;

  MoreCoursesContent(
      {required this.id,
      required this.title,
      required this.rating,
      required this.student,
      required this.date,
      required this.address,
      required this.image,
      required this.mentorImageOne,
      required this.mentorImageTwo,
      required this.mentorImageThree});
}

List<MoreCoursesContent> moreCoursesModel = [
  MoreCoursesContent(
      id: 1,
      title: "Advanced Photography",
      rating: "4.8",
      student: "40",
      date: "07 October",
      address: "Denmark",
      image: "lib/src/assets/more_courses/photography_main_02.jpg",
      mentorImageOne: "lib/src/assets/mentor/mentor_1.png",
      mentorImageTwo: "lib/src/assets/mentor/mentor_2.png",
      mentorImageThree: "lib/src/assets/mentor/mentor_3.png"),
  MoreCoursesContent(
      id: 2,
      title: "Advanced Music Topics",
      rating: "4.7",
      student: "35",
      date: "08 October",
      address: "Denmark",
      image: "lib/src/assets/more_courses/music_03.jpg",
      mentorImageOne: "lib/src/assets/mentor/mentor_1.png",
      mentorImageTwo: "lib/src/assets/mentor/mentor_2.png",
      mentorImageThree: "lib/src/assets/mentor/mentor_3.png"),
  MoreCoursesContent(
      id: 3,
      title: "Mobile App Development",
      rating: "4.4",
      student: "30",
      date: "09 November",
      address: "Denmark",
      image: "lib/src/assets/more_courses/development_course_03.jpg",
      mentorImageOne: "lib/src/assets/mentor/mentor_1.png",
      mentorImageTwo: "lib/src/assets/mentor/mentor_2.png",
      mentorImageThree: "lib/src/assets/mentor/mentor_3.png"),
  MoreCoursesContent(
      id: 4,
      title: "Leadership and Team",
      rating: "1.2",
      student: "25",
      date: "01 November",
      address: "Denmark",
      image: "lib/src/assets/more_courses/Digital-Marketing-Strategies.jpg",
      mentorImageOne: "lib/src/assets/mentor/mentor_1.png",
      mentorImageTwo: "lib/src/assets/mentor/mentor_2.png",
      mentorImageThree: "lib/src/assets/mentor/mentor_3.png"),
  MoreCoursesContent(
      id: 5,
      title: "Advanced Management",
      rating: "4.6",
      student: "45",
      date: "05 October",
      address: "Denmark",
      image: "lib/src/assets/more_courses/management_05.jpg",
      mentorImageOne: "lib/src/assets/mentor/mentor_1.png",
      mentorImageTwo: "lib/src/assets/mentor/mentor_2.png",
      mentorImageThree: "lib/src/assets/mentor/mentor_3.png")
];
