import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/features/models/dish_model.dart';
import 'package:foodi/features/screens/home/meal_details.dart';

class MealGridCard extends StatefulWidget {
  final DishModel meal;
  const MealGridCard({super.key, required this.meal});

  @override
  State<MealGridCard> createState() => _MealGridCardState();
}

class _MealGridCardState extends State<MealGridCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          () => Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => FoodDetailScreen())),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 120,
                // width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0x0fff7916),
                  image: DecorationImage(
                    image: NetworkImage(widget.meal.imageUrl ?? ""),
                    fit: BoxFit.cover,
                  ),
                ),
                alignment: Alignment.bottomLeft,
              ),
              widget.meal.isBestSeller ?? false
                  ? Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xFFff7916),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.stars_sharp,
                            size: 15,
                            color: Color(primaryColor),
                          ),
                          Text(
                            "Best Seller",
                            style: const TextStyle(
                              color: Color(primaryColor),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  : SizedBox(),
            ],
          ),
          SizedBox(height: 10),
          Text(
            widget.meal.name ?? "",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Text(
            widget.meal.description ?? "",
            style: const TextStyle(
              fontSize: 13,
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
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              // button to add to cart and change cart quantity
              Spacer(),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(lightSecondaryColor),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.remove,
                  size: 20,
                  color: Color(secondaryColor),
                ),
              ),
              const SizedBox(width: 5),
              Text(
                "0",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 5),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(secondaryColor),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.add, size: 20, color: Colors.white),
              ),
              const SizedBox(width: 5),

              // Container(
              //   padding: const EdgeInsets.all(5),
              //   decoration: BoxDecoration(
              //     color: Color(secondaryColor),
              //     borderRadius: BorderRadius.circular(5),
              //   ),
              //   child: const Icon(
              //     Icons.shopping_cart,
              //     size: 15,
              //     color: Colors.white,
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
