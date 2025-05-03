import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/core/widgets/primary_button.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order: #56789"), // TODO: add correct order ID
        elevation: 0,
      ),
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
          Text("Ordered Items", style: TextStyle(fontSize: 20)),

          ...List.generate(
            // add proper mapping to order items
            3,
            (index) => SizedBox(
              height: 75,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "McDonald",
                    style: TextStyle(
                      color: Color(secondaryColor),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "\$04",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "| 02 pices",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Text("Sub Total", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                "2 items",
                style: TextStyle(color: Color(secondaryColor), fontSize: 14),
              ),
              Spacer(),
              Text("\$10"),
            ],
          ),
          Row(
            children: [
              Text("Discount"),
              Spacer(),
              Text(
                "\$1.10",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          Row(
            children: [
              Text("Total", style: TextStyle(fontWeight: FontWeight.bold)),
              Spacer(),
              Column(
                children: [
                  Text(
                    "\$200",
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                  ),
                  Text("\$190", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    "\$100",
                    style: TextStyle(
                      color: Color(secondaryColor),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          PrimaryButton(
            label: "Repeat Order",
            onPressed: () {
              // TODO: implement repaet order function
            },
          ),
        ],
      ),
    );
  }
}
