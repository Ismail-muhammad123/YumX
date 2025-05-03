import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/core/widgets/primary_button.dart';

class OrderTrackingScreen extends StatelessWidget {
  const OrderTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(Icons.arrow_back_ios),
                    color: Color(primaryColor),
                  ),
                  Text(
                    'Tracking Order',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      // TODO: Implement gotmy location funtion
                    },
                    icon: Icon(Icons.my_location),
                    color: Color(primaryColor),
                  ),
                ],
              ),
            ),
            DraggableScrollableSheet(
              builder: (context, controller) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(16),
                  color: Colors.white,

                  child: Builder(
                    builder: (context) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            Text("Your oder is already on the way"),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(secondaryColor),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Delivery Address',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      '123 Main St, City, Country',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Icon(
                                  FontAwesomeIcons.clock,
                                  color: Color(secondaryColor),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Arrive in',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      '12 mins',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                CircleAvatar(backgroundImage: null, radius: 25),
                                Column(
                                  children: [
                                    Text(
                                      "Emanuel Efanyi",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text("AB 1234 CDE"),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {
                                    // TODO: Implement call function
                                  },
                                  icon: Icon(
                                    Icons.call,
                                    color: Color(primaryColor),
                                  ),
                                  color: Color(secondaryColor),
                                ),
                                IconButton(
                                  onPressed: () {
                                    // TODO: Implement sms function
                                  },
                                  icon: Icon(
                                    Icons.message,
                                    color: Color(primaryColor),
                                  ),
                                  color: Color(secondaryColor),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            PrimaryButton(
                              label: "Order Recieved",
                              onPressed: () {
                                // TODO: Implement order received function
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
