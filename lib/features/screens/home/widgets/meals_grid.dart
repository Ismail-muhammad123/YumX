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
        Row(
          children: [
            Text(
              widget.title ?? "",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: widget.meals.length,
          itemBuilder: (context, index) {
            return MealGridCard(meal: widget.meals[index]);
          },
        ),
      ],
    );
  }
}
