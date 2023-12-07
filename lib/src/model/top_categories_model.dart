import 'package:flutter/material.dart';

class TopCategoriesContent {
  int id;
  String category;
  String image;
  int courseCount;
  Color color;

  TopCategoriesContent(
      {required this.id,
      required this.category,
      required this.image,
      required this.courseCount,
      required this.color});
}

List<TopCategoriesContent> topCategoriesModel = [
  TopCategoriesContent(
      id: 1,
      category: "Business",
      image: "lib/src/assets/icons/image_icon/business.png",
      courseCount: 5,
      color: const Color(0xFFFFCDCC)),
  TopCategoriesContent(
      id: 2,
      category: "Development",
      image: "lib/src/assets/icons/image_icon/development.png",
      courseCount: 2,
      color: const Color(0xFFD6F4DC)),
  TopCategoriesContent(
      id: 3,
      category: "Data Science",
      image: "lib/src/assets/icons/image_icon/data_science.png",
      courseCount: 2,
      color: const Color(0xFFFFF3D3)),
  TopCategoriesContent(
      id: 4,
      category: "Arts and Design",
      image: "lib/src/assets/icons/image_icon/arts_and_design.png",
      courseCount: 2,
      color: const Color(0xFFFFCDCC)),
  TopCategoriesContent(
      id: 5,
      category: "Finance",
      image: "lib/src/assets/icons/image_icon/finance.png",
      courseCount: 2,
      color: const Color(0xFFD6F4DC)),
  TopCategoriesContent(
      id: 6,
      category: "Marketing",
      image: "lib/src/assets/icons/image_icon/marketing.png",
      courseCount: 2,
      color: const Color(0xFFFFF3D3)),
  TopCategoriesContent(
      id: 7,
      category: "Management",
      image: "lib/src/assets/icons/image_icon/management.png",
      courseCount: 2,
      color: const Color(0xFFFFCDCC)),
  TopCategoriesContent(
      id: 8,
      category: "Health",
      image: "lib/src/assets/icons/image_icon/heasth_and_fitness.png",
      courseCount: 2,
      color: const Color(0xFFD6F4DC)),
  TopCategoriesContent(
      id: 9,
      category: "Photography",
      image: "lib/src/assets/icons/image_icon/photography.png",
      courseCount: 2,
      color: const Color(0xFFFFF3D3)),
  TopCategoriesContent(
      id: 10,
      category: "Music",
      image: "lib/src/assets/icons/image_icon/music.png",
      courseCount: 2,
      color: const Color(0xFFFFCDCC))
];
