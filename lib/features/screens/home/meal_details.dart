import 'package:flutter/material.dart';
import 'package:foodi/features/screens/home/widgets/add_to_cart_btn.dart';
import 'package:foodi/features/screens/home/widgets/meals_grid.dart';

class FoodDetailScreen extends StatelessWidget {
  const FoodDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/lamb_skewers.jpg',
                  height: 280,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 16,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.share, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            DraggableScrollableSheet(
              minChildSize: 0.65,
              snap: true,
              expand: true,
              builder:
                  (context, controller) => Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Lamb Skewers',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            '''Budget-friendly menu featuring 10 skewers of lamb 
                            Skewers, served with rice and your choice of sweet (hot/cold) tea.''',
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    'Price',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    '₦19,000',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    'Quantity',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.red.shade100,
                                        child: const Icon(
                                          Icons.remove,
                                          color: Colors.red,
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      const Text(
                                        '2',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      const SizedBox(width: 12),
                                      CircleAvatar(
                                        backgroundColor: Colors.red,
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          MealsGrid(meals: [], title: "Other Menus"),
                        ],
                      ),
                    ),
                  ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AddToCartButton(
        onTap: () {
          // TODO: implement add to cart function
        },
      ),
    );
  }
}
