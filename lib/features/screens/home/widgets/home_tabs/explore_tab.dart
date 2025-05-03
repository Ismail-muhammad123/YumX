import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/features/screens/home/widgets/chefs_grid.dart';
import 'package:foodi/features/screens/home/widgets/cuisines.dart';
import 'package:foodi/features/screens/home/widgets/meals_grid.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({super.key, required this.searchController});

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 300,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/banner.png"),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 6,
                      ),
                      child: Column(
                        children: [
                          Text("Current location"),
                          Container(
                            padding: const EdgeInsets.all(14.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(14.0),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      alignment: Alignment.center,
                      child: IconButton(
                        icon: const Icon(
                          Icons.notifications,
                          size: 30,
                          color: Color(secondaryColor),
                        ),
                        onPressed: () {
                          // TODO: open notifications
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 300,
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: const Color(backgroundColor),
                  borderRadius: BorderRadius.circular(40),
                ),
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
          ],
        ),
        ChefsGridView(chefs: []),
        const SizedBox(height: 20),
        CuisinesHorizontalList(categories: []),
        const SizedBox(height: 20),
        MealsGrid(meals: [], title: "Special for you"),
      ],
    );
  }
}
