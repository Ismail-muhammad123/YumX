import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/features/models/category_model.dart';
import 'package:foodi/features/models/chef_model.dart';
import 'package:foodi/features/models/dish_model.dart';
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
        category: MealCategory(
          id: index.toString(),
          title: "Item $index",
          imageUrl:
              "https://images.pexels.com/photos/8112932/pexels-photo-8112932.jpeg",
        ),
        chef: ChefModel(
          name: 'Chef $index',
          imageUrl:
              'https://images.pexels.com/photos/8112932/pexels-photo-8112932.jpeg',
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Color(primaryColor),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 55,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: Color(secondaryColor),
          borderRadius: BorderRadius.circular(27.5),
        ),
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Total Price",
                    style: TextStyle(color: Color(primaryColor), fontSize: 12),
                  ),
                  Text(
                    "N 3,500",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(primaryColor),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            AddToCartButton(
              onTap: () {
                // TODO: implement add to cart function
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.maxFinite,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 200,
                      width: double.maxFinite,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/image9.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 40,
                          ),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.of(context).pop(),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Color(primaryColor),
                                  // color: Colors.white,
                                  child: Center(
                                    child: const Icon(
                                      Icons.keyboard_arrow_left,
                                    ),
                                  ),
                                  // onPressed: () {
                                  //   Navigator.pop(context);
                                  // },
                                ),
                              ),
                              const Spacer(),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Color(primaryColor),
                                // color: Colors.white,
                                child: Center(child: const Icon(Icons.search)),
                                // onPressed: () {
                                //   Navigator.pop(context);
                                // },
                              ),
                              const SizedBox(width: 10),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Color(primaryColor),
                                // color: Colors.white,
                                child: Center(child: const Icon(Icons.share)),
                                // onPressed: () {
                                //   Navigator.pop(context);
                                // },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 150,
                            padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width * 0.9,
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
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Chef John Doe",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_pin,
                                              color: Color(secondaryColor),
                                              size: 15,
                                            ),
                                            Text(
                                              "New York, USA",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: Color(secondaryColor),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        FontAwesomeIcons.mapLocation,
                                        color: Color(backgroundColor),
                                        size: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Metric(
                                      icon: Icon(
                                        Icons.star,
                                        color: Color(secondaryColor),
                                        size: 15,
                                      ),
                                      value: "4.9",
                                      title: "200+ reviews",
                                    ),
                                    Metric(
                                      icon: Icon(
                                        FontAwesomeIcons.clock,
                                        color: Color(secondaryColor),
                                        size: 15,
                                      ),
                                      value: "10 - 20 min",
                                      title: "Delivery time",
                                    ),

                                    Metric(
                                      icon: Icon(
                                        FontAwesomeIcons.motorcycle,
                                        color: Colors.green,
                                        size: 15,
                                      ),
                                      value: "N 3,500",
                                      title: "Delivery fee",
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 600,
              child: MealsGrid(meals: sampleDishes, title: "Recomended Menu"),
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}

class Metric extends StatelessWidget {
  final Icon icon;
  final String title;
  final String value;
  const Metric({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            icon,
            SizedBox(width: 10),
            Text(
              value,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
        Text(title, style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
