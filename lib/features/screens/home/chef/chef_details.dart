import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/features/screens/home/widgets/add_to_cart_btn.dart';
import 'package:foodi/features/screens/home/widgets/meals_grid.dart';

class ChefDetailsPage extends StatefulWidget {
  const ChefDetailsPage({super.key});

  @override
  State<ChefDetailsPage> createState() => _ChefDetailsPageState();
}

class _ChefDetailsPageState extends State<ChefDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
          color: Color(secondaryColor),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Text("Total Price"),
                Text("N 3,500", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            AddToCartButton(
              onTap: () {
                // TODO: implement add to cart function
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/image9.png",
            width: double.maxFinite,
            height: 300,

            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Row(
                children: [
                  IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Spacer(),
                  IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // TODO: Implement search functionality
                    },
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.share),
                    onPressed: () {
                      // TODO: Implement share functionality
                    },
                  ),
                ],
              ),
              SizedBox(height: 50),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              "Chef John Doe",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  color: Color(secondaryColor),
                                  size: 15,
                                ),
                                Text(
                                  "New York, USA",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Color(secondaryColor),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                FontAwesomeIcons.mapLocation,
                                color: Color(backgroundColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(secondaryColor),
                                  size: 15,
                                ),
                                Text("4.9"),
                              ],
                            ),
                            Text("200+ reviews"),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.clock,
                                  color: Color(secondaryColor),
                                ),
                                Text("10 - 20 min"),
                              ],
                            ),

                            Text("Delivery time"),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text("N 3,500"),
                                Icon(
                                  FontAwesomeIcons.motorcycle,
                                  color: Colors.green,
                                  size: 15,
                                ),
                              ],
                            ),
                            Text("Delivery fee"),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              MealsGrid(meals: [], title: "Recomended Menu"),
            ],
          ),
        ],
      ),
    );
  }
}
