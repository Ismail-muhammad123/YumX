import 'package:flutter/material.dart';
import 'package:foodi/features/models/dish_model.dart';
import 'package:foodi/features/screens/home/widgets/meal_card.dart';

class MealsGrid extends StatefulWidget {
  final List<DishModel> meals;
  final String? title;
  const MealsGrid({super.key, required this.meals, required this.title});

  @override
  State<MealsGrid> createState() => _MealsGridState();
}

class _MealsGridState extends State<MealsGrid> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                widget.title ?? "",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  // TODO add view all meals functionality
                },
                child: const Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xfff79116),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.85,
              crossAxisSpacing: 14,
              mainAxisSpacing: 20,
              children:
                  widget.meals.map((meal) => MealGridCard(meal: meal)).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
