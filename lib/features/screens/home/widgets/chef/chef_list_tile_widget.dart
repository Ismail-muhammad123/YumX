import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodi/core/constants/colors.dart';

class ChefListTile extends StatelessWidget {
  const ChefListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.maxFinite,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 120,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/images/meal.png"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Chef Name"),
              const SizedBox(height: 5),
              const Text("Chef Description"),
              const SizedBox(height: 5),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.motorcycle,
                    color: Colors.green,
                    size: 15,
                  ),
                  const Text(
                    "N 2000",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(secondaryColor),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.clock,
                    color: Color(secondaryColor),
                    size: 15,
                  ),
                  const Text(
                    "30 mins . 1km",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(secondaryColor),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.star,
                    color: const Color.fromARGB(255, 255, 131, 29),
                    size: 15,
                  ),
                  const Text(
                    "3.9 . 1400+ ratings",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(secondaryColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
