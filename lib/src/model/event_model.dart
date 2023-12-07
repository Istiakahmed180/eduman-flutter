class EventModelContent {
  final int id;
  final String title;
  final String rating;
  final String location;
  final String audience;
  final String price;
  final String monthAndYear;
  final String year;
  final String seat;
  final String category;
  final String schedule;
  final String eventImage;
  final String mentorImageOne;
  final String mentorImageTwo;
  final String mentorImageThree;
  final String introduction;

  EventModelContent(
      {required this.id,
      required this.title,
      required this.rating,
      required this.location,
      required this.audience,
      required this.price,
      required this.monthAndYear,
      required this.year,
      required this.seat,
      required this.category,
      required this.schedule,
      required this.eventImage,
      required this.mentorImageOne,
      required this.mentorImageTwo,
      required this.mentorImageThree,
      required this.introduction});
}

List<EventModelContent> eventModel = [
  EventModelContent(
      id: 1,
      title: "Mastering Digital Marketing",
      rating: "4.7",
      location: "Los Angeles",
      audience: "55",
      price: "24.00",
      monthAndYear: "07 October",
      year: "2024",
      seat: "80",
      category: "Design",
      schedule: "10 AM - 12 PM",
      eventImage: "lib/src/assets/event/digital_marketing.jpg",
      mentorImageOne: "lib/src/assets/mentor/mentor_1.png",
      mentorImageTwo: "lib/src/assets/mentor/mentor_2.png",
      mentorImageThree: "lib/src/assets/mentor/mentor_3.png",
      introduction:
          "There are so many websites out there that have not considered the overall usability of their visually impaired users. When it comes to designing better links and sending better emails, Slava Shestopalov has a few tips on how to improve your websites experience while accessibility in mind. The participants will get general ideas of the land management system of business. Everyone must work, but for many of us that job is not just a paycheck, it is an opportunity to express ourselves and make something better. Entrepreneurs and go-getters often feel as if they carry the weight of an entire organization on their backs, and therefore could always use a little extra motivation."),
  EventModelContent(
      id: 2,
      title: "Graphic Design Workshop",
      rating: "4.5",
      location: "Downtown",
      audience: "40",
      price: "35.00",
      monthAndYear: "15 November",
      year: "2024",
      seat: "90",
      category: "Design",
      schedule: "2 PM - 4 PM",
      eventImage: "lib/src/assets/event/design_workshop.jpg",
      mentorImageOne: "lib/src/assets/mentor/mentor_1.png",
      mentorImageTwo: "lib/src/assets/mentor/mentor_2.png",
      mentorImageThree: "lib/src/assets/mentor/mentor_3.png",
      introduction:
          "Join us for a graphic design workshop where you'll learn the latest techniques and trends in graphic design. Our experienced mentors will guide you through the world of design and help you unleash your creativity. Don't miss this opportunity to enhance your graphic design skills!"),
  EventModelContent(
      id: 3,
      title: "User Interface Design",
      rating: "4.9",
      location: "San Francisco",
      audience: "20",
      price: "49.99",
      monthAndYear: "20 March",
      year: "2024",
      seat: "60",
      category: "Design",
      schedule: "9 AM - 5 PM",
      eventImage: "lib/src/assets/event/design_conferance.jpg",
      mentorImageOne: "lib/src/assets/mentor/mentor_1.png",
      mentorImageTwo: "lib/src/assets/mentor/mentor_2.png",
      mentorImageThree: "lib/src/assets/mentor/mentor_3.png",
      introduction:
          "The User Interface Design Conference is the premier event for UI/UX designers. Join top industry experts and fellow designers to explore the latest trends and best practices in user interface design. Whether you're a seasoned pro or just starting your career, this conference has something for everyone."),
  EventModelContent(
      id: 4,
      title: "Web Development",
      rating: "4.7",
      location: "New York",
      audience: "80",
      price: "39.99",
      monthAndYear: "15 November",
      year: "2024",
      seat: "85",
      category: "Programming",
      schedule: "10 AM - 4PM",
      eventImage: "lib/src/assets/event/Development_Workshop.jpg",
      mentorImageOne: "lib/src/assets/mentor/mentor_1.png",
      mentorImageTwo: "lib/src/assets/mentor/mentor_2.png",
      mentorImageThree: "lib/src/assets/mentor/mentor_3.png",
      introduction:
          "Join our Web Development Workshop to learn the latest web development technologies and best practices. This hands-on workshop is suitable for beginners and experienced developers alike."),
  EventModelContent(
      id: 5,
      title: "Mobile App Development",
      rating: "4.8",
      location: "Los Angeles",
      audience: "45",
      price: "59.99",
      monthAndYear: "10 October",
      year: "2024",
      seat: "60",
      category: "Programming",
      schedule: "8:30 AM - 6 PM",
      eventImage: "lib/src/assets/event/App_Development.jpg",
      mentorImageOne: "lib/src/assets/mentor/mentor_1.png",
      mentorImageTwo: "lib/src/assets/mentor/mentor_2.png",
      mentorImageThree: "lib/src/assets/mentor/mentor_3.png",
      introduction:
          "Join the Mobile App Development Summit to discover the latest trends and tools in mobile app development. Connect with experts and fellow developers in this exciting summit."),
  EventModelContent(
      id: 6,
      title: "Graphic Design Workshop",
      rating: "4.5",
      location: "New York",
      audience: "30",
      price: "49.99",
      monthAndYear: "15 October",
      year: "2024",
      seat: "50",
      category: "Graphic",
      schedule: "9 AM - 5 PM",
      eventImage: "lib/src/assets/event/Graphic_Design_Workshop.jpg",
      mentorImageOne: "lib/src/assets/mentor/mentor_1.png",
      mentorImageTwo: "lib/src/assets/mentor/mentor_2.png",
      mentorImageThree: "lib/src/assets/mentor/mentor_3.png",
      introduction:
          "Enhance your graphic design skills in this workshop. Learn from experienced designers and create stunning visuals."),
  EventModelContent(
      id: 7,
      title: "Advanced Photoshop",
      rating: "4.9",
      location: "San Francisco",
      audience: "75",
      price: "79.99",
      monthAndYear: "25 October",
      year: "2024",
      seat: "90",
      category: "Graphic",
      schedule: "10 AM - 4 PM",
      eventImage: "lib/src/assets/event/Advanced_Photoshop_Masterclass.jpg",
      mentorImageOne: "lib/src/assets/mentor/mentor_1.png",
      mentorImageTwo: "lib/src/assets/mentor/mentor_2.png",
      mentorImageThree: "lib/src/assets/mentor/mentor_3.png",
      introduction:
          "Take your Photoshop skills to the next level in this masterclass. Learn advanced techniques from industry experts and create stunning visuals."),
  EventModelContent(
      id: 8,
      title: "Web Development",
      rating: "4.8",
      location: "New York",
      audience: "40",
      price: "149.99",
      monthAndYear: "15 November",
      year: "2424",
      seat: "70",
      category: "Development",
      schedule: "9 AM - 5 PM",
      eventImage: "lib/src/assets/event/development_bootcamp.jpg",
      mentorImageOne: "lib/src/assets/mentor/mentor_1.png",
      mentorImageTwo: "lib/src/assets/mentor/mentor_2.png",
      mentorImageThree: "lib/src/assets/mentor/mentor_3.png",
      introduction:
          "Join our intensive Web Development Bootcamp and become a proficient web developer. Gain hands-on experience in building websites and web applications.")
];