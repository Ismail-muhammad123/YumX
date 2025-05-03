import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/features/models/category_model.dart';
import 'package:foodi/features/screens/home/widgets/rounded_image.dart';

class CuisinesHorizontalList extends StatefulWidget {
  final List<MealCategory> categories;
  const CuisinesHorizontalList({super.key, required this.categories});

  @override
  State<CuisinesHorizontalList> createState() => _CuisinesHorizontalListState();
}

class _CuisinesHorizontalListState extends State<CuisinesHorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Cuisines",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "View All",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(secondaryColor),
                ),
              ),
            ),
          ],
        ),
        ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.categories.length,
          itemExtent: 100,
          itemBuilder:
              (context, index) => Container(
                margin: const EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    RoundedImage(
                      image: NetworkImage(widget.categories[index].imageUrl),
                      size: 50,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Cuisine $index",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
        ),
      ],
    );
  }
}
