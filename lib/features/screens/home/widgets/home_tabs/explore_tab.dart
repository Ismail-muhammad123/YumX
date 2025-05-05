import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/features/models/category_model.dart';
import 'package:foodi/features/models/chef_model.dart';
import 'package:foodi/features/models/dish_model.dart';
import 'package:foodi/features/screens/home/widgets/chefs_grid.dart';
import 'package:foodi/features/screens/home/widgets/cuisines.dart';
import 'package:foodi/features/screens/home/widgets/meals_grid.dart';

class ExploreTab extends StatefulWidget {
  const ExploreTab({super.key});

  @override
  State<ExploreTab> createState() => _ExploreTabState();
}

class _ExploreTabState extends State<ExploreTab> {
  final searchController = TextEditingController();
  final List<ChefModel> sampleChefs = List.generate(
    7,
    (index) => ChefModel(
      name: 'Chef $index',
      imageUrl:
          'https://images.pexels.com/photos/8112932/pexels-photo-8112932.jpeg',
    ),
  );

  final List<MealCategory> sampleCategories = List.generate(
    4,
    (index) => MealCategory(
      id: index.toString(),
      title: "Item $index",
      imageUrl:
          "https://images.pexels.com/photos/8112932/pexels-photo-8112932.jpeg",
    ),
  );

  @override
  Widget build(BuildContext context) {
    final List<DishModel> sampleDishes = List.generate(
      6,
      (index) => DishModel(
        id: index.toString(),
        name: "Dish name",
        description: "some description",
        price: 200,
        imageUrl:
            "https://images.pexels.com/photos/8112932/pexels-photo-8112932.jpeg",
        isBestSeller: index.isEven,
        category: index < 4 ? sampleCategories[index] : sampleCategories[3],
        chef: sampleChefs[index],
      ),
    );
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              width: double.maxFinite,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 300,
                      width: double.maxFinite,
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/banner.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20.0,
                              horizontal: 6,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Current location",
                                  style: TextStyle(color: Color(primaryColor)),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 14.0,
                                    vertical: 6.0,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_pin,
                                        color: Color(secondaryColor),
                                      ),
                                      Text("Your current location"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Icon(
                                Icons.notifications,
                                size: 30,
                                color: Color(secondaryColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 250,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color(backgroundColor),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(2, 2),
                                blurRadius: 12.0,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          child: Center(
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "What do you want to eat?",
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                                prefixIcon: const Icon(Icons.search),
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.all(12),
                              ),
                              controller: searchController,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 170, child: ChefsGridView(chefs: sampleChefs)),
            const SizedBox(height: 20),
            SizedBox(
              height: 140,
              child: CuisinesHorizontalList(categories: sampleCategories),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 600,
              child: MealsGrid(meals: sampleDishes, title: "Special for you"),
            ),
          ],
        ),
      ),
    );
  }
}
