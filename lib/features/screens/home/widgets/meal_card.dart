import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/features/models/dish_model.dart';

class MealGridCard extends StatefulWidget {
  final DishModel meal;
  const MealGridCard({super.key, required this.meal});

  @override
  State<MealGridCard> createState() => _MealGridCardState();
}

class _MealGridCardState extends State<MealGridCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0x0fff7916),
            image: DecorationImage(
              image: NetworkImage(widget.meal.imageUrl ?? ""),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.bottomLeft,
          child: Container(
            color: Color(0x0fff7916),
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                Icon(Icons.stars_sharp, size: 15, color: Color(primaryColor)),
                widget.meal.isBestSeller ?? false
                    ? Text(
                      "Best Seller",
                      style: const TextStyle(
                        color: Color(primaryColor),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                    : SizedBox(),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          widget.meal.name ?? "",
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
        Text(
          widget.meal.description ?? "",
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: Color(0xffb2b2b2),
          ),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Text(
              "N ${widget.meal.price}",
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(secondaryColor),
              ),
            ),
            // button to add to cart and change cart quantity
            Spacer(),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color(secondaryColor),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Icon(Icons.add, size: 15, color: Colors.white),
            ),
            const SizedBox(width: 5),
            Text(
              "0",
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(secondaryColor),
              ),
            ),
            const SizedBox(width: 5),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color(secondaryColor),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Icon(Icons.remove, size: 15, color: Colors.white),
            ),
            const SizedBox(width: 5),

            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color(secondaryColor),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Icon(
                Icons.shopping_cart,
                size: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
