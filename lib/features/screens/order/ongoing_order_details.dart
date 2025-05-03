import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Order Details"), elevation: 0),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.grey, // TODO: change to image
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Pizza Hut",
            style: TextStyle(
              color: Color(secondaryColor),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "\$35.5",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Row(
            children: [
              Text(
                "29 JAN, 2024",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              Spacer(),
              Text(
                "Order ID: ",
                style: TextStyle(
                  color: Color(secondaryColor),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text("#45678: ", style: TextStyle(fontSize: 14)),
            ],
          ),
          GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 3,
            children: List.generate(
              // TODO: change to proper map of values
              6,
              (index) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Amount",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  Text(
                    "\$10.0",
                    style: TextStyle(color: Color(secondaryColor)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
