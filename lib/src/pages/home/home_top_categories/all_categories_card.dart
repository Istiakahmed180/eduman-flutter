import 'package:eduman_flutter/src/model/top_categories_model.dart';
import 'package:eduman_flutter/src/pages/home/home_top_categories/category_courses.dart';
import 'package:flutter/material.dart';

class AllCategoriesCard extends StatelessWidget {
  final TopCategoriesContent categories;

  const AllCategoriesCard({Key? key, required this.categories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryCourses(courses: categories),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              categories.image,
              height: 50,
              width: 50,
            ),
            const SizedBox(height: 8),
            Text(
              categories.category,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '${categories.courseCount} courses',
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
