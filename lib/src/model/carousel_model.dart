class CarouselItem {
  final int id;
  final String backgroundImg;
  final String title;
  final String subline;
  final String button;
  final String image;

  CarouselItem(
      {required this.id,
      required this.backgroundImg,
      required this.title,
      required this.subline,
      required this.button,
      required this.image});
}

List<CarouselItem> carouselList = [
  CarouselItem(
      id: 1,
      backgroundImg: "lib/src/assets/carousel/carousel_1.png",
      title: "Proffesional UI-UX Design Course",
      subline: "30% Off",
      button: "Explore Now",
      image: "lib/src/assets/carousel/carousel_image_1.png"),
  CarouselItem(
      id: 2,
      backgroundImg: "lib/src/assets/carousel/carousel_2.png",
      title: "Join Upcoming Design Event",
      subline: "Jan 15, 2024",
      button: "Get Ticket",
      image: "lib/src/assets/carousel/caroules_image_2.png"),
  CarouselItem(
      id: 3,
      backgroundImg: "lib/src/assets/carousel/carousel_1.png",
      title: "Proffesional UI-UX Design Course",
      subline: "30% Off",
      button: "Explore Now",
      image: "lib/src/assets/carousel/carousel_image_1.png"),
];
