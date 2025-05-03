import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';

class COmpletedOrders extends StatefulWidget {
  const COmpletedOrders({super.key});

  @override
  State<COmpletedOrders> createState() => _COmpletedOrdersState();
}

class _COmpletedOrdersState extends State<COmpletedOrders> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: SizedBox(
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Food"),
                    SizedBox(width: 20),
                    Text("Completed", style: TextStyle(color: Colors.green)),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Column(
                      children: [
                        Row(children: [Text("Pizza Hut"), Text("#456789")]),
                        Row(
                          children: [
                            Text("\$21.1"),
                            SizedBox(width: 10),
                            Text("29 JAN, 2024"),
                            SizedBox(width: 10),
                            Text("| 02 items"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        // TODO imaplement re-order function
                      },
                      color: Color(secondaryColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Re-order",
                        style: TextStyle(color: Color(primaryColor)),
                      ),
                    ),
                    Spacer(),
                    MaterialButton(
                      onPressed: () {
                        // TODO imaplement rate function
                      },

                      color: Color(primaryColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Color(secondaryColor)),
                      ),
                      child: Text(
                        "Rate",
                        style: TextStyle(color: Color(secondaryColor)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
