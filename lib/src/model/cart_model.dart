class CartModelContent {
  int id;
  String title;
  String level;
  String image;
  String price;

  CartModelContent(
      {required this.id,
      required this.title,
      required this.level,
      required this.image,
      required this.price});
}

List<CartModelContent> cartModel = [
  CartModelContent(
    id: 1,
    title: "Digital Marketing Strategies",
    level: "Intermediate",
    image: "lib/src/assets/all_course/04.jpg",
    price: "\$19.99",
  ),
  CartModelContent(
    id: 2,
    title: "Advanced Data Science",
    level: "Beginner",
    image: "lib/src/assets/all_course/08.jpg",
    price: "\$14.99",
  ),
  CartModelContent(
    id: 3,
    title: "Arts and Design Fundamentals",
    level: "Advanced",
    image: "lib/src/assets/all_course/11.jpg",
    price: "\$29.99",
  ),
  CartModelContent(
    id: 4,
    title: "Advanced Marketing Topics",
    level: "Intermediate",
    image: "lib/src/assets/all_course/19.jpg",
    price: "\$24.99",
  )
];
