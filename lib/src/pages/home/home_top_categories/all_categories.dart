import 'package:eduman_flutter/src/model/top_categories_model.dart';
import 'package:eduman_flutter/src/pages/home/home_top_categories/all_categories_card.dart';
import 'package:eduman_flutter/src/pages/home/home_top_categories/all_categories_header.dart';
import 'package:eduman_flutter/src/widgets/colors/colors.dart';
import 'package:flutter/material.dart';

class AllCategories extends StatefulWidget {
  const AllCategories({Key? key}) : super(key: key);

  @override
  State<AllCategories> createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: screenWidth,
          padding: const EdgeInsets.only(left: 16, right: 16),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                background_linear_gradient_1,
                background_linear_gradient_2
              ],
            ),
          ),
          child: Column(
            children: [
              // * All Categories Header Section
              const AllCategoriesHeader(),
              const SizedBox(
                height: 30,
              ),
              // * All Categories Card Section
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 1.4,
                  ),
                  itemCount: topCategoriesModel.length,
                  itemBuilder: (BuildContext context, int index) {
                    TopCategoriesContent category = topCategoriesModel[index];
                    return AllCategoriesCard(
                      categories: category,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
